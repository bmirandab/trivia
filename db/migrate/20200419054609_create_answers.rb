class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false, foreign_key: true
      t.string :name
      t.float :points
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
