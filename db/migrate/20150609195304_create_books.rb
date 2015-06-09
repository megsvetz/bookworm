class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.decimal :price, precison: 2
      t.text :summary, length: {maximum: 100}

      t.timestamps null: false
    end
  end
end
