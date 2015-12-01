class WelcomeMailer < ApplicationMailer

  def contact(message)
    @message = message
    mail(to: "brassart.baptiste@gmail.com", subject: "#{@message.name} contacted you through bbrassart.com")
  end
end
