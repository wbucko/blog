class ContactMailer < ActionMailer::Base
  default to: 'bucko.wojciech@gmail.com'

  def contact_email(email, body)
    @email = email
    @body = body

    mail(from: email, subject: 'Message from your blog reader')
  end

end
