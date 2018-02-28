class HwTable < ActiveRecord::Migration[5.1]
  def change
    create_table :person do |t|
      t.string :name, null: false
    end
  end
end
