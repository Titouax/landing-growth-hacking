# Preview all emails at http://localhost:3000/rails/mailers/nanterre_mailer
load 'csvconverter'

class NanterreMailerPreview < ActionMailer::Preview
  def ncontact
    NanterreMailer.ncontact(CsvConvert.new.mailsnanterre)
  end
end
