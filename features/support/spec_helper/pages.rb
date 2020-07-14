Dir[File.join(File.dirname(__FILE__), 'page_objects/pages/*.rb')]
  .sort.each { |file| require file }

module Pages
  class Pages
    class << self
      def login
        Pages::Login.new
      end
    end
  end
end