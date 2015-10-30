class AddLevelToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :level, :integer, :default => 1
  end
end
