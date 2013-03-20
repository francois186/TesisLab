class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :PATH, :null => false
      t.date :FECHA_SUBIDA, :null => false
      t.string :ID_TESIS, :null => false
      t.string :NOMBRE, :null => false

      t.timestamps
    end
  end
end
