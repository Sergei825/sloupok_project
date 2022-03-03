class CreateTestResults < ActiveRecord::Migration[5.2]
  def change
    create_table :test_results do |t|
      t.integer :result
    end

    add_reference :test_results, :user, foreign_key: true
    add_reference :test_results, :test, foreign_key: true
  end
end
