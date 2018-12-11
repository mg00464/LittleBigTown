require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get :home_home_url
    assert_response :success

    assert_select 'title', 'Little Big Town'
    assert_select 'welcome', 'Welcome to our web app'
  end

  test "should get contact" do
    get :home_contact_url
    assert_response :success
    assert_select 'title', 'Contact Us'
    assert_select 'contact_us', 'Complete the following form to get in touch with us.'

  end
  test "should post request contact but no email" do
    post :request_contact

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post :request_contact,
      name: "Matt", email: "Matt@test.com", telephone: "1234567890", message: "Test"
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
