class AnalyticsController < ApplicationController
  def index
    @grouped_analytics = Analytic.group(
      :query, :updated_at, :articles
    ).pluck('query, count(query) as COUNTER,articles, updated_at').sort_by do |a|
      a[1]
    end.reverse.first(10)
  end
end
