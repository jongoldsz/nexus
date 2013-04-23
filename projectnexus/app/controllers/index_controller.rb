class IndexController < ApplicationController
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb                                                                                                                           
    end
  end
end
