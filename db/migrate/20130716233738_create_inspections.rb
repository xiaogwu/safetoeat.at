class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.integer :business_id
      t.integer :score
      t.datetime :date
      t.string :type

      t.timestamps
    end
  end
end
