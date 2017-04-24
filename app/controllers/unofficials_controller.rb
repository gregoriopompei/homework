class UnofficialsController < ApplicationController
  before_action :set_unofficial, only: [:show, :edit, :update, :destroy]

  # GET /unofficials
  # GET /unofficials.json
  def index
    @unofficials = Unofficial.all
  end

  # GET /unofficials/1
  # GET /unofficials/1.json
  def show
  end

  # GET /unofficials/new
  def new
    @unofficial = Unofficial.new
  end

  # GET /unofficials/1/edit
  def edit
  end

  # POST /unofficials
  # POST /unofficials.json
  def create
    @unofficial = Unofficial.new(unofficial_params)

    respond_to do |format|
      if @unofficial.save
        format.html { redirect_to @unofficial, notice: 'The homework was successfully created.' }
        format.json { render :show, status: :created, location: @unofficial }
      else
        format.html { render :new }
        format.json { render json: @unofficial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unofficials/1
  # PATCH/PUT /unofficials/1.json
  def update
    respond_to do |format|
      if @unofficial.update(unofficial_params)
        format.html { redirect_to @unofficial, notice: 'The homework was successfully updated.' }
        format.json { render :show, status: :ok, location: @unofficial }
      else
        format.html { render :edit }
        format.json { render json: @unofficial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unofficials/1
  # DELETE /unofficials/1.json
  def destroy
    @unofficial.destroy
    respond_to do |format|
      format.html { redirect_to unofficials_url, notice: 'The homework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unofficial
      @unofficial = Unofficial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unofficial_params
      params.require(:unofficial).permit(:homework, :description, :subject, :assigned_by, :assigned_in, :assigned_for)
    end
end
