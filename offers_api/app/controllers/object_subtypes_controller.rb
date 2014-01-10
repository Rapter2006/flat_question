class ObjectSubtypesController < ApplicationController
  def index
    unless index_permit.present?
      render :nothing => true, :status => :bad_request
    else
      type = Term.find_by system_name: index_permit[:type_system_name]
      if type.nil?
        render :nothing => true, :status => :not_found
      else   
        render json: type.child_vocabulary.terms 
      end
    end
  end

  private 
    def index_permit
      params_java_style.permit(:organization_id, :type_system_name)
    end
end
