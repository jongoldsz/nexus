class BlogentriesController < ApplicationController
  # GET /blogentries
  # GET /blogentries.json
  def index
    @blogentries = Blogentry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogentries }
    end
  end

  # GET /blogentries/1
  # GET /blogentries/1.json
  def show
    @blogentry = Blogentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blogentry }
    end
  end

  # GET /blogentries/new
  # GET /blogentries/new.json
  def new
    @blogentry = Blogentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blogentry }
    end
  end

  # GET /blogentries/1/edit
  def edit
    @blogentry = Blogentry.find(params[:id])
  end

  # POST /blogentries
  # POST /blogentries.json
  def create
    @blogentry = Blogentry.new(params[:blogentry])

    respond_to do |format|
      if @blogentry.save
        format.html { redirect_to @blogentry, notice: 'Blogentry was successfully created.' }
        format.json { render json: @blogentry, status: :created, location: @blogentry }
      else
        format.html { render action: "new" }
        format.json { render json: @blogentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogentries/1
  # PUT /blogentries/1.json
  def update
    @blogentry = Blogentry.find(params[:id])

    respond_to do |format|
      if @blogentry.update_attributes(params[:blogentry])
        format.html { redirect_to @blogentry, notice: 'Blogentry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blogentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogentries/1
  # DELETE /blogentries/1.json
  def destroy
    @blogentry = Blogentry.find(params[:id])
    @blogentry.destroy

    respond_to do |format|
      format.html { redirect_to blogentries_url }
      format.json { head :no_content }
    end
  end
end
