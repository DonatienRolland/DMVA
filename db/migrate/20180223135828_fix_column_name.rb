class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :type, :genre
  end
end
