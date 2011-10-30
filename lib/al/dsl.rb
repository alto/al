module Al
  module DSL
    def object(o)
      @data = @_data[o.class.name.underscore] = {}
      @obj = o
      yield if block_given?
    end

    def attributes(*attrs)
      @data.tap do |obj|
        attrs.each do |attr|
          obj[attr] = @obj.send(attr)
        end
      end
    end
  end
end
