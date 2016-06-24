class WelcomeMailer < ApplicationMailer

  def contact(message)
    @message = message
    mail(to: "seedthespot@gmail.com", subject: "#{@message.name} contacted you through bbrassart.me")
  end
end
