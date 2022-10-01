class ArticlesController < ApplicationController
  before_action :check_session, only: [:search]
    
    def index
        @articles = []
    end
    
    def search
      if params[:query].empty?
        render(partial: '/shared/home', locals: { articles: [] })
      else
        articles = Article.title_search(params[:query])
        render(partial: '/shared/home', locals: { articles: articles })
       save_search(params[:query], session[:user_id])
      end
    end
    
    private

    def save_search(query, session)
      return if query.nil? || query.length < 3
  
      recent_search = Analytic.new(user_params)
      recent_search.session_id = session
      session_search = Analytic.where(session_id: session).last
      if session_search.nil? || !session_search.searched?(query)
        recent_search.save
      elsif session_search.query.length < query.length
        session_search.update(query: query)
      end
    end
  
    def user_params
      params.permit(:query)
    end
  
    def check_session
      session[:user_id] = SecureRandom.urlsafe_base64(16) if session[:user_id].nil?
    end
end
