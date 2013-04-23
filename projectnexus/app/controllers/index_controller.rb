class IndexController < ApplicationController
  def index
    @projects = Project.limit(4)

    respond_to do |format|
      format.html # index.html.erb                                                                                                                           
    end
  end
end
