class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :question
      t.references :answer

      t.timestamps
    end
  end
end
