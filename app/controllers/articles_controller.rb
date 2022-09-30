class ArticlesController < ApplicationController
    def index
        @articles = []
    end
    
    def search
        articles = Article.where('title LIKE ?', "%#{params[:query]}%").first(10)
        render(partial: '/shared/home', locals: { articles: articles })
    end
end
