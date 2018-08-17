class NanterreMailer < ApplicationMailer
  def ncontact(emails)
    mail(subject:"Cher étudiant de Nanterre",
         bcc: emails)
  end
end
