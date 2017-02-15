class MonographsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  # GET /monographs
  # GET /monographs.json
  def index
    @monographs = Monograph.all.limit(15)
  end

  # GET /monographs/1
  # GET /monographs/1.json
  def show
  end

  # GET /monographs/new
  def new

  end

  # GET /monographs/1/edit
  def edit
  end

  # POST /monographs
  # POST /monographs.json
  def create


    respond_to do |format|
      if @monograph.save
        format.html { redirect_to @monograph, notice: 'Monograph was successfully created.' }
        format.json { render :show, status: :created, location: @monograph }
      else
        format.html { render :new }
        format.json { render json: @monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monographs/1
  # PATCH/PUT /monographs/1.json
  def update
    respond_to do |format|
      if @monograph.update(monograph_params)
        format.html { redirect_to @monograph, notice: 'Monograph was successfully updated.' }
        format.json { render :show, status: :ok, location: @monograph }
      else
        format.html { render :edit }
        format.json { render json: @monograph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monographs/1
  # DELETE /monographs/1.json
  def destroy
    @monograph.destroy
    respond_to do |format|
      format.html { redirect_to monographs_url, notice: 'Monograph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def monograph_params
      params.require(:monograph).permit(:title, :body)
    end
end
