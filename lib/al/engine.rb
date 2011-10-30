module Al
  class Engine
    include Al::DSL

    def initialize(source, options={})
      @_source = source
      @_options = options
      @_data = {}
    end

    def render(scope, locals, &block)
      @_locals, @_scope = locals, scope
      copy_instance_variables_from(@_scope, [:@assigns, :@helpers])

      instance_eval(@_source) if @_source.present?

      MultiJson.encode(@_data)
    end

    private

    def copy_instance_variables_from(object, exclude = []) #:nodoc:
      vars = object.instance_variables.map(&:to_s) - exclude.map(&:to_s)
      vars.each { |name| instance_variable_set(name, object.instance_variable_get(name)) }
    end
  end
end
