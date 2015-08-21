class Partit < ActiveRecord::Base
  belongs_to :entrenador
  has_and_belongs_to_many :jugadors , join_table: :partits_jugadors
end
