class CreateBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.integer :board_no
      t.string :title
      t.string :text
      t.string :author

      t.timestamps
    end
  end
end
