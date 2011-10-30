module Al
  class Engine
    include Al::DSL

    def initialize(source, options={})
      @_source  = source    # the template source
      @_options = options
      @_data    = {}        # this is hash containing the output elements
    end

    def render(scope)
      @_scope = scope
      copy_instance_variables(:exclude => [:@assigns, :@helpers])

      # evaluate the template source
      instance_eval(@_source) if @_source.present?

      MultiJson.encode(@_data)
    end

    private

    def copy_instance_variables(options={}) #:nodoc:
      exclude = options[:exclude] || []
      # puts "copy_instance_variables: #{@_scope.instance_variables.inspect}"
      vars = @_scope.instance_variables.map(&:to_s) - exclude.map(&:to_s)
      vars.each { |name| instance_variable_set(name, @_scope.instance_variable_get(name)) }
    end
  end
end
