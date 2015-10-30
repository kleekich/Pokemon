class RemoveLevelToPokemon < ActiveRecord::Migration
  def change
    remove_column :pokemons, :level, :integer
  end
end
