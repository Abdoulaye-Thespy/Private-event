class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
    	t.date :date
    	t.string :name_event
    	t.text :description
    	t.references :user

      t.timestamps
    end
  end
end
