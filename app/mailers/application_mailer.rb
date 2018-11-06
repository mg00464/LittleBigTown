class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com', to: 'Bookings@LittleBigTown.co.uk'
  layout 'mailer'
end
