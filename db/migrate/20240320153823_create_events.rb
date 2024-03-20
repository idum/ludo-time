class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.text :title, null: false, default: "No-named"
      t.text :location, null: false, default: ""
      t.datetime :date, null: false, default: Date.today

      t.timestamps
    end
  end
end
