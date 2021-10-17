class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.decimal :salary
      t.integer :needed_workers
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
