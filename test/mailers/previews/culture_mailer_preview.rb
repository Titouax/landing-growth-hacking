# Preview all emails at http://localhost:3000/rails/mailers/culture_mailer
class CultureMailerPreview < ActionMailer::Preview
  def cultural
    CultureMailer.cultural(CsvConvert.new.mails_insti_cult)
  end
end
