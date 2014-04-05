class CreateTaskTagTable < ActiveRecord::Migration
  def change
    create_table :tasks_tags do |t|
      t.integer :task_id, index: true
      t.integer :tag_id, index: true
    end
  end
end
