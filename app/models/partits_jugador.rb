class PartitsJugador < ActiveRecord::Base
  belongs_to :partit
  belongs_to :jugador
end
