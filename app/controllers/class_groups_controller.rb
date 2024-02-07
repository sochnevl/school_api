class ClassGroupsController < ApplicationController
  # GET /schools/:school_id/classes
  def index
    school = School.find(params[:school_id])
    class_groups = school.class_groups

    render json: class_groups
  end
end
