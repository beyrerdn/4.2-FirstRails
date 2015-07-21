class CreateSamuels < ActiveRecord::Migration
  def change
    create_table :samuels do |t|

      t.timestamps null: false
    end
  end
end
