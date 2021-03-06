class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json
  def index
    # @projects = Project.all
    @categories = Category.limit(5)
    @featured = Project.find(:all, :conditions => [ "featured = ?", true], :limit =>4)
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1/objectives
  def objectives
    @project = Project.find(params[:id])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    if current_user
      @membership = Membership.find_by_project_id_and_user_id(@project.id, current_user.id)
      @supporter = Supporter.find_by_project_id_and_user_id(@project.id, current_user.id)
      @messages = Message.find_by_project_id_and_to_user_id(@project.id, current_user.id)
    else
      @membership = nil
      @supporter = nil
      @messages = nil
    end
    @objective = Objective.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
      format.js
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @tags = Tag.all
    @project = Project.find(params[:id])
  end

  # GET /projects/1/home
  def home
    @project = Project.find(params[:id])
    render :layout => false
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
