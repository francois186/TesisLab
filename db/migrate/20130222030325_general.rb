class General < ActiveRecord::Migration
  def change
    #-------------
    # TESIS
    #-------------
    create_table :tesis do |t|
      t.string :NOMBRE, :null => false
      t.date :FECHA_INICIO, :null => false
      t.string :DESCRIPCION
      t.integer :PROFESOR_ID, :null => false

      t.timestamps
    end

    #-------------
    # COMPROMISOS
    #-------------
    create_table :compromisos do |t|
      t.date :FECHA_CREACION, :null => false
      t.date :FECHA_COMPROMETIDA, :null => false
      t.date :FECHA_CIERRE, :null => false
      t.string :ROL, :null => false
      t.integer :TESIS_ID, :null => false

      t.timestamps
    end

    #-------------
    # ENTREGABLES
    #-------------
    create_table :entregables do |t|
      t.string :NOMBRE, :null => false
      t.date :FECHA_ENTREGA, :null => false
      t.integer :TESIS_ID, :null => false
      t.string :URI_DOCUMENTO, :null => false

      t.timestamps
    end

    #-------------
    # FUENTES
    #-------------
    create_table :fuentes_bibliograficas do |t|
      t.string :URL
      t.string :AUTOR
      t.string :LIBRO
      t.string :RESUMEN
      t.date :FECHA_BIBLIOGRAFIA
      t.date :FECHA_LECTURA
      t.integer :TESIS_ID, :null => false
      t.integer :ESTUDIANTES_ID, :null => false

      t.timestamps
    end

    #-------------
    # TABLA PUENTE
    #-------------
    create_table :tesis_estudiantes, :id => false do |t|
      t.integer :TESIS_ID, :null => false
      t.integer :ESTUDIANTE_ID, :null => false

      t.timestamps
    end

    #-------------
    # PROFESORES
    #-------------
    create_table :profesores do |t|
      t.integer :PRIMER_NOMBRE, :null => false
      t.string :SEGUNDO_NOMBRE
      t.string :PRIMER_APELLIDO, :null => false
      t.string :SEGUNDO_APELLIDO

      t.timestamps
    end

    #-------------
    # ESTUDIANTES
    #-------------
    create_table :estudiantes do |t|
      t.string :PRIMER_NOMBRE, :null => false
      t.string :SEGUNDO_NOMBRE
      t.string :PRIMER_APELLIDO, :null => false
      t.string :SEGUNDO_APELLIDO
      t.integer :CODIGO, :null => false

      t.timestamps
    end

    #Se crean las foreign keys respectivas
    execute <<-SQL
      ALTER TABLE tesis
        ADD CONSTRAINT fk_tesis_profesor_id
        FOREIGN KEY (PROFESOR_ID)
        REFERENCES profesores(ID)
    SQL

    execute <<-SQL
      ALTER TABLE tesis_estudiantes
      ADD CONSTRAINT fk_tesis_estudiantes_tesis_id
      FOREIGN KEY (TESIS_ID)
      REFERENCES tesis(ID)
    SQL

    execute <<-SQL
      ALTER TABLE tesis_estudiantes
      ADD CONSTRAINT fk_tesis_estudiantes_estudiante_id
      FOREIGN KEY (ESTUDIANTE_ID)
      REFERENCES estudiantes(ID)
    SQL

    execute <<-SQL
      ALTER TABLE entregables
      ADD CONSTRAINT fk_entregables_tesis_id
      FOREIGN KEY (TESIS_ID)
      REFERENCES tesis(ID)
    SQL

    execute <<-SQL
      ALTER TABLE compromisos
      ADD CONSTRAINT fk_compromisos_tesis_id
      FOREIGN KEY (TESIS_ID)
      REFERENCES tesis(ID)
    SQL

    execute <<-SQL
      ALTER TABLE fuentes_bibliograficas
      ADD CONSTRAINT fk_fuentes_tesis_id
      FOREIGN KEY (TESIS_ID)
      REFERENCES tesis(ID)
    SQL

    execute <<-SQL
      ALTER TABLE fuentes_bibliograficas
      ADD CONSTRAINT fk_fuentes_estudiantes_id
      FOREIGN KEY (ESTUDIANTES_ID)
      REFERENCES estudiantes(ID)
    SQL

  end
end