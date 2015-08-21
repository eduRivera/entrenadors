class Jugador < ActiveRecord::Base
  belongs_to :entrenador
  has_and_belongs_to_many :partits, join_table: :partits_jugadors
end
