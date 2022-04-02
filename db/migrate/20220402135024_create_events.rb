class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :event_host, null: false, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.string :name
      t.text :description
      t.text :summary

      t.timestamps
    end
  end
end
