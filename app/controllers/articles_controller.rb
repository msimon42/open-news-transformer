class ArticlesController < ApplicationController
  def request_form; end

  def get_articles
    @articles = NewsScraperService.new.request_articles(request_articles_params)
  end

  private
    def request_articles_params
      params.permit(:startDate, :endDate, :keywords, :amount)
    end
end
