class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :created_by
      t.integer :question_id
      t.references :user, null: false, foreign_key: true



      t.timestamps
    end
  end
end
