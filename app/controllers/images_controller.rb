class ImagesController < ApplicationController
  # GET /Images
  # GET /Images.json
  def index
    @Images = Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Images }
    end
  end

  # GET /Images/1
  # GET /Images/1.json                                                                                                  +

  def show
    @Image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Image }
    end
  end

  # GET /Images/new
  # GET /Images/new.json
  def new
    @Image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Image }
    end
  end

  # GET /Images/1/edit
  def edit
    @Image = Image.find(params[:id])
  end

  # POST /Images
  # POST /Images.json
  def create
    @Image = Image.new(params[:Image])

    respond_to do |format|
      if @Image.save
        format.html { redirect_to @Image, notice: 'Image was successfully created.' }
        format.json { render json: @Image, status: :created, location: @Image }
      else
        format.html { render action: "new" }
        format.json { render json: @Image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Images/1
  # PUT /Images/1.json
  def update
    @Image = Image.find(params[:id])

    respond_to do |format|
      if @Image.update_attributes(params[:Image])
        format.html { redirect_to @Image, notice: 'Image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Images/1
  # DELETE /Images/1.json
  def destroy
    @Image = Image.find(params[:id])
    @Image.destroy

    respond_to do |format|
      format.html { redirect_to Images_url }
      format.json { head :no_content }
    end
  end
end
