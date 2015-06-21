class CreateCalificaciones < ActiveRecord::Migration
  def change
    create_table :calificaciones do |t|
      t.text :Asignatura
      t.string :Catedratico
      t.float :Nota
      t.text :Observaciones

      t.timestamps
    end
  end
end
