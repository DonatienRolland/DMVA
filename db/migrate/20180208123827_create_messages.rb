class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :titre
      t.string :objet
      t.text :content
      t.string :photo
      t.string :nom
      t.string :email

      t.timestamps
    end
  end
end
