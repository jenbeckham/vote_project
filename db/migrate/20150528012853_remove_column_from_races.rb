class RemoveColumnFromRaces < ActiveRecord::Migration
  def change
    remove_column :races, :string, :string
  end
end
