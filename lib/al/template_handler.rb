module ActionView
  module Template::Handlers
    class Al
      def self.call(template)
        %{ ::Al::Engine.new(#{template.source.inspect}).render(self, assigns.merge(local_assigns)) }
      end
    end
  end
end

ActionView::Template.register_template_handler :al, ActionView::Template::Handlers::Al
