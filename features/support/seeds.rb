# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AfterConfiguration do
  # Libro.create( :titulo=>"Cien Aos de Soledad", :autor=>'Gabriel Garcia Marquez' )
  # Libro.create( :titulo=> 'Cien Problemas de Programacion Lineal', :autor=>'Guillermo Jimenez')
  # Libro.create( :titulo=> 'El Coronel no Tiene Quien le Escriba', :autor=>'Gabriel Garcia Marquez' )
  #Profesore.create(:id=>1,:PRIMER_APELLIDO=>"apellido1", :PRIMER_NOMBRE=>"nombre1", :SEGUNDO_APELLIDO=>"apellido2", :SEGUNDO_NOMBRE=>"nombre2")
  #Estudiante.create(:CODIGO=>"1234", :id=>1, :PRIMER_APELLIDO=>"apellido1", :PRIMER_NOMBRE=>"nombre1", :SEGUNDO_APELLIDO=>"apellido2", :SEGUNDO_NOMBRE=>"nombre2")
  #Tesi.create(:DESCRIPCION=>"", :FECHA_INICIO=>Date.new(2001,2,3), :id=>1, :NOMBRE=>"tesis1", :PROFESOR_ID=>1)
  #TesisEstudiante.create(:ESTUDIANTE_ID => 1, :TESIS_ID => 1)
  #FuenteBibliografica.create( :AUTOR=>"autor1", :ESTUDIANTES_ID=>1, :FECHA_BIBLIOGRAFIA=>Date.new(2001,2,3), :FECHA_LECTURA=>Date.new(2001,2,3), :id=>1, :LIBRO=>"libro1", :RESUMEN=>"resumen del libro 1", :TESIS_ID=>1, :URL=>"www.libro1.com")
  #Compromiso.create(:FECHA_CIERRE=>Date.new(2021,2,3), :FECHA_COMPROMETIDA=>Date.new(2014,2,3), :FECHA_CREACION=>Date.new(2001,2,3), :id=>1, :ROL=>"profesor", :TESIS_ID=>1, :TITULO=>"compromiso1", :CONTENIDO=>"contenido del compromiso 1")
end
