class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.has_and_belongs_to_many :task

      t.timestamps
    end
  end
end
