Dir[File.join(File.dirname(__FILE__), 'page_objects/pages/*.rb')]
  .sort.each { |file| require file }

module Pages
  class Pages
    class << self
      def login
        Login.new
      end

      def perfil
        Perfil.now
      end
    end
  end
end

