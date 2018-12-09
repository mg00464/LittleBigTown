class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def admin
  end

  def about
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else if name.blank?
      flash[:alert] = I18n.t('home.request_contact.no_name')
    else if message.blank?
      flash[:alert] = I18n.t('home.request_contact.no_message')
    end
      # Send an email
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end
    #todo - redirect to thank you page with link to root_path
    redirect_to root_path
  end
end
end
