class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def params_java_style
    underscore_params = {}
    params.each_pair do |param, value| 
      underscore_params[param.underscore] = value
    end
    ActionController::Parameters.new underscore_params
  end
end
