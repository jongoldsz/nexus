class IndexController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @featured = Project.find_by_featured(true).shuffle

    respond_to do |format|
      format.html # index.html.erb                                                                                                                           
    end
  end
end
