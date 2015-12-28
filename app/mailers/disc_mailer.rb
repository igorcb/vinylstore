class DiscMailer < ApplicationMailer
  default from: 'vinylstore2016@gmail.com'
 
  def buy_email(disc, email)
    @disc = disc
    mail(to: email, subject: "By Disc - #{@disc.id}")
  end	
end
