class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.integer :mark

      t.timestamps
    end
  end
end
