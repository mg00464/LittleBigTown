class ContactMailer < ApplicationMailer

  def contact_email(email, name, telephone, message)
  @email = email
  @name = name
  @telephone = telephone
  @message = message
  mail cc:
  @email end

  def confirm(name)
    @customerName = a
    @introduction = "Thank you for your Query. We will be in touch with you shortly"
    mail to: customer.email, subject: "Website Query"

end
