class CreateVeggies < ActiveRecord::Migration
  def change
    create_table :veggies do |t|

      t.timestamps null: false
    end
  end
end
