class RohansController < ApplicationController
  before_action :set_rohan, only: %i[ show edit update destroy ]

  # GET /rohans or /rohans.json
  def index
    @rohans = Rohan.all
  end

  # GET /rohans/1 or /rohans/1.json
  def show
  end

  # GET /rohans/new
  def new
    @rohan = Rohan.new
  end

  # GET /rohans/1/edit
  def edit
  end

  # POST /rohans or /rohans.json
  def create
    @rohan = Rohan.new(rohan_params)

    respond_to do |format|
      if @rohan.save
        format.html { redirect_to rohan_url(@rohan), notice: "Rohan was successfully created." }
        format.json { render :show, status: :created, location: @rohan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rohan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rohans/1 or /rohans/1.json
  def update
    respond_to do |format|
      if @rohan.update(rohan_params)
        format.html { redirect_to rohan_url(@rohan), notice: "Rohan was successfully updated." }
        format.json { render :show, status: :ok, location: @rohan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rohan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rohans/1 or /rohans/1.json
  def destroy
    @rohan.destroy

    respond_to do |format|
      format.html { redirect_to rohans_url, notice: "Rohan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rohan
      @rohan = Rohan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rohan_params
      params.require(:rohan).permit(:name, :age)
    end
end
