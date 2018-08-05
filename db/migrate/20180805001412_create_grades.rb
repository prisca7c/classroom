class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :letter, :default => "NG"
      t.integer :enrollment_id

      t.timestamps
    end
  end
end
