class CreateAnotacions < ActiveRecord::Migration
  def change
    create_table :anotacions do |t|
      t.string :texto
      t.integer :fuenteid
      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE anotacions
      ADD CONSTRAINT fk_anotacions_fuente_id
      FOREIGN KEY (FUENTEID)
      REFERENCES fuente_bibliograficas(id)
    SQL
  end
end
