class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :nick_name

      t.timestamps
    end
  end
end
