class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text       :concept,     null: false
      t.text       :place,       null: false
      t.text       :period,      null: false
      t.references :user,        foreign_key: true 
      t.timestamps
    end
  end
end
