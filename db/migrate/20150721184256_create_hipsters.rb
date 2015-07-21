class CreateHipsters < ActiveRecord::Migration
  def change
    create_table :hipsters do |t|

      t.timestamps null: false
    end
  end
end
