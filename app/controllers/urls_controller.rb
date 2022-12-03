class UrlsController < ApplicationController
  def index
    @urls = Url.all.order(:id)
  end

  def show
    @url = Url.find_by(short: params[:short])
    render 'urls/404', status: 404 if @url.nil?
    @url.update_attribute(:clicks, @url.clicks + 1) unless @url.nil?
    redirect_to @url.long, allow_other_host: true
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.short = @url.short.downcase if !@url.short.nil? && @url.short != ''

    if @url.save
      redirect_to '/'
    else
      flash[:alert] = 'URL not created'
      render :new
    end
  end

  private

  def url_params
    params.require(:url).permit(:long, :short)
  end
end
