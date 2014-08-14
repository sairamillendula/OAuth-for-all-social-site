class DrivesController < ApplicationController
  # GET /drives
  # GET /drives.json
  def index
    @drives = Drive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drives }
    end
  end

  # GET /drives/1
  # GET /drives/1.json
  def show
    @drife = Drive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drife }
    end
  end

  # GET /drives/new
  # GET /drives/new.json
  def new
    @drife = Drive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drife }
    end
  end

  # GET /drives/1/edit
  def edit
    @drife = Drive.find(params[:id])
  end

  # POST /drives
  # POST /drives.json
  def create
    @drife = Drive.new(params[:drife])

    respond_to do |format|
      if @drife.save
        format.html { redirect_to @drife, notice: 'Drive was successfully created.' }
        format.json { render json: @drife, status: :created, location: @drife }
      else
        format.html { render action: "new" }
        format.json { render json: @drife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drives/1
  # PUT /drives/1.json
  def update
    @drife = Drive.find(params[:id])

    respond_to do |format|
      if @drife.update_attributes(params[:drife])
        format.html { redirect_to @drife, notice: 'Drive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drives/1
  # DELETE /drives/1.json
  def destroy
    @drife = Drive.find(params[:id])
    @drife.destroy

    respond_to do |format|
      format.html { redirect_to drives_url }
      format.json { head :no_content }
    end
  end
end
