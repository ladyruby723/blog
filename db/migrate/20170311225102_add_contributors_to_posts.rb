class AddContributorsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :contributor, foreign_key: true
  end
end
