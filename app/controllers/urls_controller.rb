class UrlsController < ApplicationController
  def index
    @urls = Url.all.order(:id)
  end

  def show
    @url = Url.find_by(chibi_url: params[:chibi_url])
    render 'urls/404', status: 404 if @url.nil?
    @url&.update_attribute(:clicks, @url.clicks + 1)
    redirect_to @url.original_url, allow_other_host: true
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.chibi_url = @url.chibi_url.downcase if !@url.chibi_url.nil? && @url.chibi_url != ''
    if @url.save
      redirect_to '/'
    else
      flash[:alert] = @url.errors.full_messages.first
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url, :chibi_url)
  end
end
