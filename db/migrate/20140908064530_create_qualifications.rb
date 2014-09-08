class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.integer :vmilist_id
      t.integer :instruktor_id
      t.string :reason

      t.timestamps
    end
  end
end
