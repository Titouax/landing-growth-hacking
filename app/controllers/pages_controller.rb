load 'mailchimp'

class PagesController < ApplicationController
  def home
  end

  def newsletter
    NewsletterMailer.contact(Mchimp.new.collect_mails).deliver_now
  end
end
