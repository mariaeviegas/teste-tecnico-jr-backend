class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :titulo, null: false
      t.string :descricao
      t.string :status, null: false
      t.date :prazo

      t.timestamps
    end
  end
end
