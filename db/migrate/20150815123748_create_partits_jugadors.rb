class CreatePartitsJugadors < ActiveRecord::Migration
  def change
    create_table :partits_jugadors do |t|
      t.references :partit, index: true
      t.references :jugador, index: true
      t.boolean :titular
      t.boolean :no_convocat
      t.integer :min_disp
      t.integer :gols
      t.integer :targetes_grogues
      t.integer :targetes_vermelles
      t.boolean :partit_no_disp

      t.timestamps null: false
    end
    add_foreign_key :partits_jugadors, :partits
    add_foreign_key :partits_jugadors, :jugadors
  end
end
