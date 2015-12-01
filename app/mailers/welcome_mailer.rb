class WelcomeMailer < ApplicationMailer

  def contact(message)
    @message = message
    mail(to: "brassart.baptiste@gmail.com", subject: "#{@message.name} you contacted through bbrassart.com")
  end
end
