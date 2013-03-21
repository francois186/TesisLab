class AddUsuarioToEstudiante < ActiveRecord::Migration
  def change
    add_column :estudiantes, :USUARIO, :string
  end
end
