class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :person
      t.text :comment
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :articles
  end
end
