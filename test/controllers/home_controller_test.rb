require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get :home_home_url
    assert_response :success


  end

  test "correct title" do
    assert_select 'title', 'Little Big Town'
    assert_select 'h1', 'Welcome to our web app'

  end

  test "should get contact" do
    get :contact
    assert_response :success
  end
  test "should post request contact but no email" do
    post :request_contact

    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post :request_contact,
      name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"
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
