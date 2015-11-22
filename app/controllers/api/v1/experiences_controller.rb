class Api::V1::ExperiencesController < ApplicationController
  def all_experiences
    year = Year.find_by(title: params[:year].to_i)
    response = year.experiences
    render json: response
  end
end
