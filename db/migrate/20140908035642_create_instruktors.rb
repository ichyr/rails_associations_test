class CreateInstruktors < ActiveRecord::Migration
  def change
    create_table :instruktors do |t|
      t.string :name

      t.timestamps
    end
  end
end
