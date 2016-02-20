class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
