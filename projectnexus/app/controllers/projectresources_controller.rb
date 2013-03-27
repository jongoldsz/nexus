class ProjectresourcesController < ApplicationController
  # GET /projectresources
  # GET /projectresources.json
  def index
    @projectresources = Projectresource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projectresources }
    end
  end

  # GET /projectresources/1
  # GET /projectresources/1.json
  def show
    @projectresource = Projectresource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projectresource }
    end
  end

  # GET /projectresources/new
  # GET /projectresources/new.json
  def new
    @projectresource = Projectresource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projectresource }
    end
  end

  # GET /projectresources/1/edit
  def edit
    @projectresource = Projectresource.find(params[:id])
  end

  # POST /projectresources
  # POST /projectresources.json
  def create
    @projectresource = Projectresource.new(params[:projectresource])

    respond_to do |format|
      if @projectresource.save
        format.html { redirect_to @projectresource, notice: 'Projectresource was successfully created.' }
        format.json { render json: @projectresource, status: :created, location: @projectresource }
      else
        format.html { render action: "new" }
        format.json { render json: @projectresource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projectresources/1
  # PUT /projectresources/1.json
  def update
    @projectresource = Projectresource.find(params[:id])

    respond_to do |format|
      if @projectresource.update_attributes(params[:projectresource])
        format.html { redirect_to @projectresource, notice: 'Projectresource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @projectresource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projectresources/1
  # DELETE /projectresources/1.json
  def destroy
    @projectresource = Projectresource.find(params[:id])
    @projectresource.destroy

    respond_to do |format|
      format.html { redirect_to projectresources_url }
      format.json { head :no_content }
    end
  end
end
