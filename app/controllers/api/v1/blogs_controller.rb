class Api::V1::BlogsController < ApplicationController
  def index
    blogs = Blog.all
    render json: blogs
  end

  def show
    index = params[:index]
    blog = Blog.find_by(currentIndex: index)
    render json: blog
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :text, :date)
  end

end
