class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|

      t.timestamps null: false
    end
  end
end
