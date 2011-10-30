module ActionView
  module Template::Handlers
    class Al
      class_attribute :default_format
      self.default_format = Mime::JSON

      def self.call(template)
        %{ ::Al::Engine.new(#{template.source.inspect}).render(self, assigns.merge(local_assigns)) }
      end
    end
  end
end

ActionView::Template.register_template_handler :al, ActionView::Template::Handlers::Al
