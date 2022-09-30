class AnalyticsController < ApplicationController
    def index
        @grouped_searches = Analytic.group(:query).pluck('query, count(query) as COUNT').sort_by do |a|
          a[1]
        end.reverse.first(100)
    end
end
