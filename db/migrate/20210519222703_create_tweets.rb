class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
