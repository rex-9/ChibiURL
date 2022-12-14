class UrlsController < ApplicationController
  before_action :authenticate_user!, except: %i[public show]

  def index
    @urls = current_user.urls.order(:id)
  end

  def public
    @urls = Url.where(public: true).order(:id)
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
      flash[:notice] = "Chibi URL saved successfully: #{@url.chibi_url}"
      redirect_to '/'
    else
      flash[:alert] = @url.errors.full_messages.first
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @url = Url.find_by(id: params[:id])
    if @url.destroy
      flash[:notice] = 'Url deleted successfully'
      redirect_to root_path
    else
      flash[:alert] = @url.errors.full_messages.first
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url, :chibi_url, :public).merge(user_id: current_user.id)
  end
end
