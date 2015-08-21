class PartitsJugadorsController < ApplicationController
  before_action :set_partits_jugador, only: [:show, :edit, :update, :destroy]

  # GET /partits_jugadors
  # GET /partits_jugadors.json
  def index
    @partits_jugadors = PartitsJugador.all
  end

  # GET /partits_jugadors/1
  # GET /partits_jugadors/1.json
  def show
  end

  # GET /partits_jugadors/new
  def new
    @partits_jugador = PartitsJugador.new
  end

  # GET /partits_jugadors/1/edit
  def edit
  end

  # POST /partits_jugadors
  # POST /partits_jugadors.json
  def create
    @partits_jugador = PartitsJugador.new(partits_jugador_params)

    respond_to do |format|
      if @partits_jugador.save
        format.html { redirect_to @partits_jugador, notice: 'Partits jugador was successfully created.' }
        format.json { render :show, status: :created, location: @partits_jugador }
      else
        format.html { render :new }
        format.json { render json: @partits_jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partits_jugadors/1
  # PATCH/PUT /partits_jugadors/1.json
  def update
    respond_to do |format|
      if @partits_jugador.update(partits_jugador_params)
        format.html { redirect_to @partits_jugador, notice: 'Partits jugador was successfully updated.' }
        format.json { render :show, status: :ok, location: @partits_jugador }
      else
        format.html { render :edit }
        format.json { render json: @partits_jugador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partits_jugadors/1
  # DELETE /partits_jugadors/1.json
  def destroy
    @partits_jugador.destroy
    respond_to do |format|
      format.html { redirect_to partits_jugadors_url, notice: 'Partits jugador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partits_jugador
      @partits_jugador = PartitsJugador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partits_jugador_params
      params.require(:partits_jugador).permit(:partit_id, :jugador_id, :titular, :no_convocat, :min_disp, :gols, :targetes_grogues, :targetes_vermelles, :partit_no_disp)
    end
end
