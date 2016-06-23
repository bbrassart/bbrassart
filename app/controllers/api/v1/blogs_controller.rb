class Api::V1::BlogsController < ApplicationController
  def index
    blogs = Rails.cache.fetch("blog/all") do
      Blog.all
    end
    render json: blogs
  end

  def show
    index = params[:index]
    blog = Rails.cache.fetch("blog/#{params[:index]}") do
      Blog.find_by(currentIndex: index)
    end
    render json: blog
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :text, :date)
  end

end
