class CreateContracts < ActiveRecord::Migration[6.1]
  def change
    create_table :contracts do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :worker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
