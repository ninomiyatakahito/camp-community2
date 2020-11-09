class CreateEventTags < ActiveRecord::Migration[6.0]
  def change
    create_table :event_tags do |t|
      t.references :post, null: false, foreign_key: true
      t.reference :tag

      t.timestamps
    end
  end
end
