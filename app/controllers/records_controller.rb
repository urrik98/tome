class RecordsController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!

  # GET /records
  # GET /records.json
  def index
    @records = Record.all
    @recently_added = Record.order("created_at DESC").limit(5)
    @most_viewed = Record.order("times_viewed DESC").limit(5)
    @recently_viewed = Record.order("updated_at DESC").limit(5)
    @topics = Topic.order("name ASC")
  end

  # GET /records/1
  # GET /records/1.json
  def show
    @record.update(times_viewed: @record.times_viewed + 1)
  end

  # GET /records/new
  def new
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create

    @record.user_id = current_user.id
    @tags = @record.technology.split(', ')

    respond_to do |format|
      if @record.save
        @tags.each do |t|
          if Topic.where(name: t.downcase).exists?
            @topic = Topic.find_by name: t.downcase
            @tag = @record.tags.new(topic_id: @topic.id)
            @tag.save
          else
            @topic = Topic.create(name: t.downcase)
            @record.tags.create(topic_id: @topic.id)
          end
        end
        format.html { redirect_to records_url, :gflash => {:success => 'Record was successfully created.' } }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update

    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:title, :body, :project, :technology);
    end
end
