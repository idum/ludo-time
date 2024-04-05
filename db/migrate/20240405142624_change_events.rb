class ChangeEvents < ActiveRecord::Migration[7.1]
  def change
    change_column_default :events, :date, nil
  end
end
