class IndexController < ApplicationController
  def index
    @projects = Project.all
    @featured = Project.find_by_featured(true)

    respond_to do |format|
      format.html # index.html.erb                                                                                                                           
    end
  end
end
