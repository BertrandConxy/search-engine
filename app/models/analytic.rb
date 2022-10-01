class Analytic < ApplicationRecord
  require 'fuzzystringmatch'
  validates :query, presence: true
  validates :query, length: { minimum: 3, maximum: 60 }
  validates :session_id, presence: true

  def searched?(search)
    jarow = FuzzyStringMatch::JaroWinkler.create(:native)
    similarity_percentage = jarow.getDistance(search, query)
    similarity_percentage > 0.8
  end
end
