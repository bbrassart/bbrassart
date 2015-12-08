class FeaturesController < ApplicationController
  def index
    @message = Message.new
  end

  def show
    @message = Message.new
    @post = Blog.find_by(url: params[:url])
    @posts = Blog.all
  end
end
