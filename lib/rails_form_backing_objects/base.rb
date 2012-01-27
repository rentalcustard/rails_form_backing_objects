module RailsFormBackingObjects
  class Base
    extend ActiveModel::Naming
    include ActiveModel::Conversion
    include ActiveModel::Validations

    @@attrs = {}

    def self.attribute(name, &block)
      @@attrs[name] = block
      attr_accessor name
      if block
        define_method("#{name}=") do |val|
          self.instance_variable_set("@#{name}".to_sym, block.call(val)) 
        end
      end
    end

    define_method :initialize do |attrs = {}|
      attrs.each do |k, v|
        self.send("#{k}=", v)
      end
    end

    def persisted?
      false
    end
  end
end
