class AnalyticsController < ApplicationController
    def index
      @grouped_analytics = Analytic.group(:query).pluck('query, count(query) as COUNTER').sort_by do |a|
        a[1]
      end.reverse.first(10)
    end
end
