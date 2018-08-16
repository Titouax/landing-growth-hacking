class PagesController < ApplicationController
  def home
    NewsletterMailer.contact(Mchimp.new.collect_mails).deliver_now
  end
end
