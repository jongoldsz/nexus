class IndexController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @featured = Project.find(:all, :conditions => [ "featured = ?", true], :limit =>4)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }                                                                      
    end
  end
end
