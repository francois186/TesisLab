# features/support/paths.rb
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition
  #
  # @param [Object] page_name
  def path_to(page_name)
    case page_name

      when /^the home\s?page$/
        '/'

      when /registrar_fuente/
        '/fuente_bibliograficas/new'

      when /crear_tema/
        '/temas/new'

      when /tema_creado/
        '/temas/confirm'

      when /crear_compromiso/
        '/compromisos/new'

      when /revisar_fuente/
        '/fuente_bibliograficas/list'

      when /revisar_compromisos/
        '/compromisos/list'

      when /revisar_compromisos_estudiante/
        '/compromisos/2345/list'

      when /listar_entregables/
        '/entregables/list'

      when /revisar_reuniones/
        '/reuniones/list'

      when /crear_acta_reunion/
        '/reuniones/new'

      when /reuniones/
        '/reuniones'

      when /archivos/
        '/archivos/new'

      when /archivosListo/
        '/archivos/new'

      # Add more mappings here.
      # Here is an example that pulls values out of the Regexp:
      #
      #   when /^(.*)'s profile page$/i
      #     user_profile_path(User.find_by_login($1))

      else
        begin
          page_name =~ /^the (.*) page$/
          path_components = $1.split(/\s+/)
          self.send(path_components.push('path').join('_').to_sym)
        rescue NoMethodError, ArgumentError
          raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
                    "Now, go and add a mapping in #{__FILE__}"
        end
    end
  end
end

World(NavigationHelpers)