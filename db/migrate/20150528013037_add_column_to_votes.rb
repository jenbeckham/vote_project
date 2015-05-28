class AddColumnToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :race_id, :integer
  end
end
