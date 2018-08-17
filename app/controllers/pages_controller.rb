load 'mailchimp'
load 'csvconverter'

class PagesController < ApplicationController

  def home
  end

  def newsletter
    NewsletterMailer.contact(Mchimp.new.collect_mails).deliver_now
    CultureMailer.cultural(Mchimp.new.collect_mails).deliver_now
    NanterreMailer.ncontact(Mchimp.new.collect_mails).deliver_now
    PoitiersMailer.pcontact(Mchimp.new.collect_mails).deliver_now
  end

end
