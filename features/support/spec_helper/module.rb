Dir[File.join(File.dirname(__FILE__), 'page_objects/sections/*.rb')]
  .sort.each { |file| require file }

module Sections
  class Sections
    class << self
      def sidebar
        Sidebar.now
      end
    end
  end
end