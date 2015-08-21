class CreateJugadors < ActiveRecord::Migration
  def change
    create_table :jugadors do |t|
      t.string :nom
      t.string :cognoms
      t.string :foto
      t.date :data_neix
      t.string :categoria
      t.string :equips
      t.string :posicio
      t.string :cama_dominant
      t.references :entrenador, index: true

      t.timestamps null: false
    end
    add_foreign_key :jugadors, :entrenadors
  end
end
