class CreateIbuks < ActiveRecord::Migration
  def change
    create_table :ibuks do |t|
      t.string :title
      t.decimal :price
      t.string :uid
      t.references :user, index: true

      t.timestamps
    end
  end
end
