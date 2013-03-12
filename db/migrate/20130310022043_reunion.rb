class Reunion < ActiveRecord::Migration
  def change
    #-------------
    # REUNIONES
    #-------------
    create_table :reuniones do |t|
      t.date :FECHA, :null => false
      t.string :RESUMEN
      t.string :CONCLUSIONES
      t.integer :TESIS_ID, :null => false

      t.timestamps
    end
    execute <<-SQL
      ALTER TABLE reuniones
      ADD CONSTRAINT fk_reunion_tesis_id
      FOREIGN KEY (TESIS_ID)
      REFERENCES tesis(ID)
    SQL
  end



end
