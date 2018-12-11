require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

    test "should return contact email" do
      mail = ContactMailer.contact_email("matt@test.com" "Matt",
                                          "1234567890", @message = "Hello")
      assert_equal ['matt@test.com'], mail.to
      assert_equal ['test@test.com'], mail.from
    end

end
