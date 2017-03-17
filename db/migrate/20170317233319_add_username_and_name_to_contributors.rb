class AddUsernameAndNameToContributors < ActiveRecord::Migration[5.0]
  def change
    add_column :contributors, :username, :string
    add_index :contributors, :username, unique: true
    add_column :contributors, :name, :string
  end
end
