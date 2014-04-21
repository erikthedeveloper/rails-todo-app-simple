class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :due_date
      t.boolean  :complete
      t.belongs_to :tasklist, index: true

      t.timestamps
    end
  end
end
