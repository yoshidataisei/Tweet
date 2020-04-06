class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.text :content
      t.references :put, foreign_key: true

      t.timestamps
    end
  end
end
