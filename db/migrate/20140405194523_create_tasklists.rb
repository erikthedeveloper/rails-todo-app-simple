class CreateTasklists < ActiveRecord::Migration
  def change
    create_table :tasklists do |t|
      t.string :name
      t.text :description
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
