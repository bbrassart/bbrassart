class Api::V1::ExperiencesController < ApplicationController
  def all_experiences
    year = Rails.cache.fetch("cv/#{params[:year]}") do
      Year.find_by(title: params[:year].to_i)
    end
    xps = year.experiences
    render json: xps
  end
end
