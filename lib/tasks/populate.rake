namespace :db do
  desc 'Borra y llena la base de datos'
  task :populate => :environment do
    require 'populator'

    #[ Compromiso,FuenteBibliografica,TesisEstudiante,Estudiante,Tesi,Profesore, Tema ,Anotacion].each(&:delete_all)

    Profesore.populate 3 do |prof|
      prof.PRIMER_APELLIDO = Populator.words(1)
      prof.PRIMER_NOMBRE = Populator.words(1)
      prof.SEGUNDO_APELLIDO = Populator.words(1)
      prof.SEGUNDO_NOMBRE = Populator.words(0..1)
    end
    Tema.populate 3 do |tema|
      tema.NOMBRE = Populator.words(1)
      tema.DESCRIPCION = Populator.words(1)
    end
begin
    i = 1
    Estudiante.populate 5 do |est|
      est.id = i
      est.CODIGO = 200800000..201099999
      est.PRIMER_APELLIDO = Populator.words(1)
      est.PRIMER_NOMBRE = Populator.words(1)
      est.SEGUNDO_APELLIDO = Populator.words(1)
      est.SEGUNDO_NOMBRE = Populator.words(0..1)
      i += 1
    end



    i = 1
    Tesi.populate 5 do |t|
      t.id = i
      t.DESCRIPCION = Populator.sentences(1)
      t.FECHA_INICIO = 3.week.from_now.to_date
      t.NOMBRE = Populator.words(3..5)
      t.PROFESOR_ID = 1..3
      i += 1
    end

    Compromiso.populate 10..20 do |comp|
      comp.TITULO = Populator.words(1..2)
      comp.CONTENIDO = Populator.sentences(1)
      comp.FECHA_CIERRE = rand(3..5).week.from_now.to_date
      comp.FECHA_COMPROMETIDA = rand(1..3).week.from_now.to_date
      comp.FECHA_CREACION = rand(1..5).week.ago.to_date
      comp.ROL = ['profesor', 'estudiante']
      comp.TESIS_ID = 1..5
    end

    i = 1
    FuenteBibliografica.populate 5 do |fuente|
      fuente.id=i
      fuente.URL='www.'+Populator.words(1)+'.com'
      fuente.AUTOR= Populator.words(2)
      fuente.LIBRO= Populator.words(1..6)
      fuente.RESUMEN= Populator. words(7..13)
      fuente.FECHA_BIBLIOGRAFIA= rand(0..10).year.ago.to_date
      fuente.FECHA_LECTURA= rand(0..30).week.ago.to_date
      fuente.EDITORIAL= Populator.words(1)
      fuente.UBICACION= Populator.words(1)
      fuente.TESIS_ID=1..5
      fuente.ESTUDIANTES_ID=1..5
      i += 1
    end

    i = 1
    Anotacion.populate 5 do |anota|
      anota.id=i
      anota.texto=Populator.words(8..10)
      anota.fuenteid=1..5
      i = i +1
    end

    i = 1
    TesisEstudiante.populate 5 do |te|
      te.TESIS_ID = i
      te.ESTUDIANTE_ID = i
      i = i+1
    end

end
  end
end
