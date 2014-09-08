class CreateVmilists < ActiveRecord::Migration
  def change
    create_table :vmilists do |t|
      t.string :name

      t.timestamps
    end
  end
end
