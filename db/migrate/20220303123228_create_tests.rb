class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.text :question1
      t.text :answers1
      t.text :right_answer1
      t.text :question2
      t.text :answers2
      t.text :right_answer2
      t.text :question3
      t.text :answers3
      t.text :right_answer3

      t.timestamps
    end

    add_reference :tests, :user, foreign_key: true
  end
end
