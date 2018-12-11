class ApplicationMailer < ActionMailer::Base
  default to: 'test@test.com', from: 'noreply@LittleBigTown.com'
  layout 'mailer'

end
