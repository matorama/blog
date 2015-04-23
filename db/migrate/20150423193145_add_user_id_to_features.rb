class AddUserIdToFeatures < ActiveRecord::Migration
  def change
    add_reference :features, :user, index: true, foreign_key: true
  end
end
