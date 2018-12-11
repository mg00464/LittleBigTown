require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  test "should return contact email" do
    mail = ContactMailer.contact_email("matt@test.com", "Matt", "0123456789", "test")

    assert_equal ['test@test.com'], mail.to
    assert_equal ['noreply@LittleBigTown.com'], mail.from

  end
end
