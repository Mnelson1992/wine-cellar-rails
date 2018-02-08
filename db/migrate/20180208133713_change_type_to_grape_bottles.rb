class ChangeTypeToGrapeBottles < ActiveRecord::Migration[5.1]
  def change
    rename_column :bottles, :type, :grape
  end
end
