require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select 'title', 'Little Big Town'

  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select 'title', 'Little Big Town'

  end
  test "should post request contact but no email" do
    post :request_contact

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post :request_contact, params: {
      email: "matt@test.com", name: "Matt", telephone: "0123456789", message: "test"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]

      if email.blank?
        flash[:alert] = I18n.t('home.request_contact.no_email')
      else
        containsMailer.contact_email(email, name, telephone, message).deliver_now
        flash[:notice] = I18n.t('home.request_contact.email_sent')
      end

  end


end
