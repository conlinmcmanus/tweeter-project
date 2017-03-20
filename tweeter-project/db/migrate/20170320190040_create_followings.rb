class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.belongs_to :follower, class_name: "User"
      t.belongs_to :followed, class_name: "User"

      t.timestamps
    end
  end
end
