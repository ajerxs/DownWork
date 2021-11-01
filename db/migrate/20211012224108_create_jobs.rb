class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :salary
      t.integer :positions
      t.integer :client_id

      t.timestamps
    end
  end
end
