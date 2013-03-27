class ProjecttagsController < ApplicationController
  # GET /projecttags
  # GET /projecttags.json
  def index
    @projecttags = Projecttag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projecttags }
    end
  end

  # GET /projecttags/1
  # GET /projecttags/1.json
  def show
    @projecttag = Projecttag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @projecttag }
    end
  end

  # GET /projecttags/new
  # GET /projecttags/new.json
  def new
    @projecttag = Projecttag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @projecttag }
    end
  end

  # GET /projecttags/1/edit
  def edit
    @projecttag = Projecttag.find(params[:id])
  end

  # POST /projecttags
  # POST /projecttags.json
  def create
    @projecttag = Projecttag.new(params[:projecttag])

    respond_to do |format|
      if @projecttag.save
        format.html { redirect_to @projecttag, notice: 'Projecttag was successfully created.' }
        format.json { render json: @projecttag, status: :created, location: @projecttag }
      else
        format.html { render action: "new" }
        format.json { render json: @projecttag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projecttags/1
  # PUT /projecttags/1.json
  def update
    @projecttag = Projecttag.find(params[:id])

    respond_to do |format|
      if @projecttag.update_attributes(params[:projecttag])
        format.html { redirect_to @projecttag, notice: 'Projecttag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @projecttag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projecttags/1
  # DELETE /projecttags/1.json
  def destroy
    @projecttag = Projecttag.find(params[:id])
    @projecttag.destroy

    respond_to do |format|
      format.html { redirect_to projecttags_url }
      format.json { head :no_content }
    end
  end
end
