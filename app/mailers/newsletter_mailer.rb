class NewsletterMailer < ApplicationMailer

  def contact(emails)
    mail(subject:'The Hacking Project Newsletter',
         bcc: emails)
  end

end
