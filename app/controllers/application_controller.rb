class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:show, :index, :how_the_mark_is_calculated, :show_statistics_full, 
    :teams_making]
  before_action :set_paper_trail_whodunnit

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|      
      format.json { head :forbidden, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: exception.message }        
      format.js   { head :forbidden, content_type: 'text/html' }        
    end     
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    respond_to do |format|      
      format.json { head :not_found, content_type: 'text/html' }        
      format.html { redirect_to after_sign_in_path_for(current_user), alert: "Enregistrement non trouvé" }        
      format.js   { head :not_found, content_type: 'text/html' }        
    end
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end

  skip_before_action :verify_authenticity_token

  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end

  def cors_preflight_check
    if request.method == 'OPTIONS'
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, Token'
      headers['Access-Control-Max-Age'] = '1728000'

      render :text => '', :content_type => 'text/plain'
    end
  end

end
