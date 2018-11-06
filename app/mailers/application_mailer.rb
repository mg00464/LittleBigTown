class ApplicationMailer < ActionMailer::Base
  default from: 'info@mynotes.com', to: 'info@mynotes.com'
  layout 'mailer'
end
