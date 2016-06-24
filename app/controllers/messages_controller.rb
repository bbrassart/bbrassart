class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      WelcomeMailer.contact(@message).deliver_now
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :text)
  end

end
