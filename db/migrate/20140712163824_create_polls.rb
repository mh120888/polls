class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.string :answer_type

      t.timestamps
    end
  end
end
