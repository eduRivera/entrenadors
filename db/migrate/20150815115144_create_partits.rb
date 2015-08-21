class CreatePartits < ActiveRecord::Migration
  def change
    create_table :partits do |t|
      t.string :jornada
      t.date :data_partit
      t.string :rival
      t.string :comentaris
      t.references :entrenador, index: true

      t.timestamps null: false
    end
    add_foreign_key :partits, :entrenadors
  end
end
