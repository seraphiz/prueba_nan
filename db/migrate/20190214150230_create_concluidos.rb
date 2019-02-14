class CreateConcluidos < ActiveRecord::Migration[5.2]
  def change
    create_table :concluidos do |t|
      t.boolean :completed, default: false
      t.references :user, foreign_key: true
      t.references :tarea, foreign_key: true

      t.timestamps
    end
  end
end
