class IndexController < ApplicationController
  def index
    @projects = Project

    respond_to do |format|
      format.html # index.html.erb                                                                                                                           
    end
  end
end
