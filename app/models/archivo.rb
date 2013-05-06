class Archivo < ActiveRecord::Base
  attr_accessible :PATH, :FECHA_SUBIDA, :ID_TESIS, :NOMBRE, :id


  def descargar
    require 'open-uri'
    open('image.png', 'wb') do |file|
      file << open('http://example.com/image.png').read
    end
  end
end