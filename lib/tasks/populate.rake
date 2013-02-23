namespace :db do
  desc 'Borra y llena la base de datos'
  task :populate => :environment do
    require 'populator'

    [Estudiante, Compromiso, Tesi, Profesore].each(&:delete_all)

    Profesore.populate 3 do |prof|
      prof.PRIMER_APELLIDO = Populator.words(1)
      prof.PRIMER_NOMBRE = Populator.words(1)
      prof.SEGUNDO_APELLIDO = Populator.words(1)
      prof.SEGUNDO_NOMBRE = Populator.words(0..1)
    end

    Estudiante.populate 20 do |est|
      est.CODIGO = 200800000..201099999
      est.PRIMER_APELLIDO = Populator.words(1)
      est.PRIMER_NOMBRE = Populator.words(1)
      est.SEGUNDO_APELLIDO = Populator.words(1)
      est.SEGUNDO_NOMBRE = Populator.words(0..1)
    end

    Tesi.populate 5 do |t|
      t.DESCRIPCION = Populator.sentences(1..2)
      t.FECHA_INICIO = 3.week.from_now.to_date
      t.NOMBRE = Populator.words(3..5)
      t.PROFESOR_ID = 1..3
    end

    Compromiso.populate 10..20 do |comp|
      comp.TITULO = Populator.words(1..2)
      comp.CONTENIDO = Populator.sentences(1)
      comp.FECHA_CIERRE = 2.week.from_now.to_date
      comp.FECHA_COMPROMETIDA = 1.week.from_now.to_date
      comp.FECHA_CREACION = 1.week.ago.to_date
      comp.ROL = ['profesor', 'estudiante']
      comp.TESIS_ID = 1..5
    end

  end
end
