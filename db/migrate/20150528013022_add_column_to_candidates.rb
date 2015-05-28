class AddColumnToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :race_id, :integer
  end
end
