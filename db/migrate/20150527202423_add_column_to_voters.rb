class AddColumnToVoters < ActiveRecord::Migration
  def change
    add_column :voters, :security_key, :string
  end
end
