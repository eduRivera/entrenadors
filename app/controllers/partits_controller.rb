class PartitsController < ApplicationController
  before_action :set_partit, only: [:show, :edit, :update, :destroy]

  # GET /partits
  # GET /partits.json
  def index
    @partits = Partit.where(:entrenador_id => current_entrenador.id).all
  end

  # GET /partits/1
  # GET /partits/1.json
  def show
  end

  # GET /partits/new
  def new
    @partit = Partit.new
  end

  # GET /partits/1/edit
  def edit
  end

  # POST /partits
  # POST /partits.json
  def create
    @partit = Partit.new(partit_params)

    respond_to do |format|
      if @partit.save
        format.html { redirect_to @partit, notice: 'Partit was successfully created.' }
        format.json { render :show, status: :created, location: @partit }
      else
        format.html { render :new }
        format.json { render json: @partit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partits/1
  # PATCH/PUT /partits/1.json
  def update
    respond_to do |format|
      if @partit.update(partit_params)
        format.html { redirect_to @partit, notice: 'Partit was successfully updated.' }
        format.json { render :show, status: :ok, location: @partit }
      else
        format.html { render :edit }
        format.json { render json: @partit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partits/1
  # DELETE /partits/1.json
  def destroy
    @partit.destroy
    respond_to do |format|
      format.html { redirect_to partits_url, notice: 'Partit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partit
      partit = Partit.where(:entrenador_id => current_entrenador.id, :id => params[:id]).all
      @partit = partit[0]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partit_params
      params.require(:partit).permit(:jornada, :data_partit, :rival, :comentaris, :entrenador_id)
    end
end
