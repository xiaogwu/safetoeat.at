class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.integer :business_id
      t.datetime :date
      t.integer :violation_type_id
      t.string :violation_severity
      t.text :description

      t.timestamps
    end
  end
end
