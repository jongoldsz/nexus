class CollectionsController < ApplicationController
  def show
    @featured = Project.find(:all, :conditions => [ "featured = ?", true], :limit =>4)
    @projects = Project.all
    respond_to do |format|
      format.html
      format.json { render json: @project }
      format.js
    end
  end
end
