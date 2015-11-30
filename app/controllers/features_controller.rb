class FeaturesController < ApplicationController
  def index
    @message = Message.new
  end
end
