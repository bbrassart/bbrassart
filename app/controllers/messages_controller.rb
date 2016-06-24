class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    if @message.save
      begin
        WelcomeMailer.contact(@message).deliver_now
      rescue
        Net::SMTPAuthenticationError
      end
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
