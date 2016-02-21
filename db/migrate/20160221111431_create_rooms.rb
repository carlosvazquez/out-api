class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.string :inmueble
      t.integer :price
      t.integer :rooms_available
      t.boolean :gays,              null: false, default: "true"
      t.boolean :lesbianas,              null: false, default: "true"
      t.boolean :transexuales,              null: false, default: "true"
      t.boolean :bisexuales,              null: false, default: "true"
      t.boolean :tercer_genero,              null: false, default: "true"
      t.boolean :queer,              null: false, default: "true"
      t.timestamps null: false
    end
  end
end
