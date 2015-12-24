class DiscMailer < ApplicationMailer
  default from: 'vinylstore2016@gmail.com'
 
  def buy_email(disc)
    @disc = disc
    mail(to: "igor.batista@gmail.com", subject: "By Disc - #{@disc.id}")
  end	
end
