class CreateFollowUsers < ActiveRecord::Migration
  def change
    create_table :follow_users do |t|
      
      t.integer  :follower
      t.integer  :following
      t.datetime  :suscribed

      t.timestamps null: false
    end
  end
end
