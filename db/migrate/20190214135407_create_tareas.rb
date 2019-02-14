class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
