class PumsController < ApplicationController
  before_action :set_pum, only: [:show, :edit, :update, :destroy]

  # GET /pums
  # GET /pums.json
  def index
    @pums = Pum.all
  end

  # GET /pums/1
  # GET /pums/1.json
  def show
  end

  # GET /pums/new
  def new
    @pum = Pum.new
  end

  # GET /pums/1/edit
  def edit
  end

  # POST /pums
  # POST /pums.json
  def create
    @pum = Pum.new(pum_params)

    respond_to do |format|
      if @pum.save
        format.html { redirect_to @pum, notice: 'Pum was successfully created.' }
        format.json { render :show, status: :created, location: @pum }
      else
        format.html { render :new }
        format.json { render json: @pum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pums/1
  # PATCH/PUT /pums/1.json
  def update
    respond_to do |format|
      if @pum.update(pum_params)
        format.html { redirect_to @pum, notice: 'Pum was successfully updated.' }
        format.json { render :show, status: :ok, location: @pum }
      else
        format.html { render :edit }
        format.json { render json: @pum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pums/1
  # DELETE /pums/1.json
  def destroy
    @pum.destroy
    respond_to do |format|
      format.html { redirect_to pums_url, notice: 'Pum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pum
      @pum = Pum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pum_params
      params.require(:pum).permit(:state_puma, :borough, :agegroupsd, :agegroups, :age65plus, :age18, :mutu, :mutud, :educd_recode, :educd_college, :engability, :lanx, :nativity, :povertylevel, :disabilityagegroups, :classwkr_dcp, :id)
    end
end
