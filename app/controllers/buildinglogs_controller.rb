class BuildinglogsController < ApplicationController
  # GET /buildinglogs
  # GET /buildinglogs.json
  def index
    @buildinglogs = Buildinglog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buildinglogs }
    end
  end

  # GET /buildinglogs/1
  # GET /buildinglogs/1.json
  def show
    @buildinglog = Buildinglog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buildinglog }
    end
  end

  # GET /buildinglogs/new
  # GET /buildinglogs/new.json
  def new
    @buildinglog = Buildinglog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buildinglog }
    end
  end

  # GET /buildinglogs/1/edit
  def edit
    @buildinglog = Buildinglog.find(params[:id])
  end

  # POST /buildinglogs
  # POST /buildinglogs.json
  def create
    @buildinglog = Buildinglog.new(params[:buildinglog])

    respond_to do |format|
      if @buildinglog.save
        format.html { redirect_to root_path, notice: 'Log was successfully created.' }
        format.json { render json: root_path, status: :created, location: @buildinglog }
      else
        format.html { render action: "new" }
        format.json { render json: @buildinglog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /buildinglogs/1
  # PUT /buildinglogs/1.json
  def update
    @buildinglog = Buildinglog.find(params[:id])

    respond_to do |format|
      if @buildinglog.update_attributes(params[:buildinglog])
        format.html { redirect_to @buildinglog, notice: 'Buildinglog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buildinglog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildinglogs/1
  # DELETE /buildinglogs/1.json
  def destroy
    @buildinglog = Buildinglog.find(params[:id])
    @buildinglog.destroy

    respond_to do |format|
      format.html { redirect_to buildinglogs_url }
      format.json { head :no_content }
    end
  end
end
