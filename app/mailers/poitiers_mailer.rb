class PoitiersMailer < ApplicationMailer
  def pcontact(emails)
    mail(subject:"Cher étudiant de Poitiers",
         bcc: emails)
  end
end
