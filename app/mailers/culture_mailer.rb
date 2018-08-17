class CultureMailer < ApplicationMailer
  def cultural(emails)
    mail(subject:"Une formation digitale pour les institutions culturelles.",
         bcc: emails)
  end
end
