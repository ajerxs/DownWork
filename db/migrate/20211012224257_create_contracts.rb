class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.date :start_date
      t.date :end_date
      t.integer :job_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
