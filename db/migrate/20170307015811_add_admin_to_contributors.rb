class AddAdminToContributors < ActiveRecord::Migration[5.0]
  def change
    add_column :contributors, :admin, :boolean, default: false # this adds admin functionality to Contributors. By default, admin is False for contributors.
  end
end
