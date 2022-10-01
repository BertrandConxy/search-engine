class SaveAnalytic
  def self.save_search(query, session, articles)
    return if query.nil? || query.length < 3

    recent_search = Analytic.new(query: query, articles: articles)
    recent_search.session_id = session
    session_search = Analytic.where(session_id: session).last
    if session_search.nil? || !session_search.searched?(query)
      recent_search.save
    elsif session_search.query.length < query.length
      session_search.update(query: query, articles: articles)
    end
  end
end
