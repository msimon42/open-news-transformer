class ArticlesController < ApplicationController
  def request_form; end

  def get_articles
    form_data = send("#{params[:type]}_params".to_sym)
    @articles = NewsScraperService.new.send(params[:type].to_sym, form_data)
  end

  private
    def request_articles_params
      params.permit(:startDate, :endDate, :keywords, :amount)
    end
end
