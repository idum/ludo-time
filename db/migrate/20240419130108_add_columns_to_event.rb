class AddColumnsToEvent < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :club, :text
    add_column :events, :info, :text
    add_column :events, :adv, :text
    add_column :events, :social, :text
    add_column :events, :tag, :text
    add_column :events, :is_hidden, :boolean, default: false
    add_column :events, :is_signable, :boolean, default: false
    add_column :events, :max_sign, :integer, default: 0
  end
end
