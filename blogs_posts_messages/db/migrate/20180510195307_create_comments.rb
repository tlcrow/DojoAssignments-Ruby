class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :opinions, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
