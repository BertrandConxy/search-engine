class Article < ApplicationRecord

    def self.title_search(query)
        if exists?
            where("title ilike :q", q: "%#{query}%").pluck(:title).first(10)
        end
    end
    
end
