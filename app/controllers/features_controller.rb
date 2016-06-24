class FeaturesController < ApplicationController
  def index
    @message = Message.new
  end

  def show
    @message = Message.new
    @post = Rails.cache.fetch("blog/#{params[:url]}") do
      Blog.find_by(url: params[:url])
    end
    @posts = Rails.cache.fetch("blog/all") do
      Blog.all
    end
  end
end
