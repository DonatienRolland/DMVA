class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
