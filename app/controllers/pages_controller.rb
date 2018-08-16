class PagesController < ApplicationController
  def home
  end

  def newsletter
    NewsletterMailer.contact(Mchimp.new.collect_mails).deliver_now
    PoitiersMailer.pcontact(CsvConvert.new.mailspoitiers).deliver_now
    NanterreMailer.ncontact(CsvConvert.new.mailsnanterre).deliver_now
    CultureMailer.cultural(CsvConvert.new.mails_insti_cult).deliver_now
  end
end
