class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :style
      t.string :hop
      t.string :yeast

      t.timestamps null: false
    end
  end
end
