class Peeps < ActiveRecord::Migration[5.2]
  def change
    create_table :peeps do |t|
      t.string :body, null: false
      t.timestamps
      t.references :user, null: false, foreign_key: true
  end
end
end