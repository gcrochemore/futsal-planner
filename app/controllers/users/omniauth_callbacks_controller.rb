class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    if current_user.present?
      current_user.apply_omniauth_facebook(request.env["omniauth.auth"])
      redirect_to edit_user_registration_path, notice: "Facebook Account Linked!"
    else
      @user = User.from_omniauth_facebook(request.env["omniauth.auth"])
      if @user.nil?
        flash[:notice] = 'Votre compte facebook n\'est pas lié à un compte FutsalPlanner'
        redirect_to new_user_session_path
      else
        sign_in_and_redirect @user
      end
    end
  end

  def google_oauth2
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth_google(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def microsoft
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth_microsoft(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def linkedin
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth_linkedin(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end

  def twitter
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth_twitter(request.env['omniauth.auth'])

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end
end