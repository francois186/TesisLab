class AddUsuarioToProfesor < ActiveRecord::Migration
  def change
    add_column :profesores, :USUARIO, :string
  end
end
