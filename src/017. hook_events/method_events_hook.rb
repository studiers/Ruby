class Klass
    def singleton_method_added(method_name)
        puts "singleton_method_added: #{method_name}"
    end

    def before_method_added; end

    class << self
        private
        def method_added(method_name)
            puts "method_added: #{method_name}"
        end

        def method_removed(method_name)
            puts "method_removed: #{method_name}"
        end

        def method_undefined(method_name)
            puts "method_undefined: #{method_name}"
        end
    end

    def after_method_added; end  # method_added: after_method_added
end

Klass.class_eval do
    def class_eval_added; end  # method_added: class_eval_adde  d
end

klass = Klass.new

def klass.new_singleton_method; end  # singleton_method_added: new_singleton_method

class Klass
    def dummy_method; end  # method_added: dummy_method
    remove_method :dummy_method  # method_removed: dummy_method

    def dummy_method; end  # method_added: dummy_method
    undef_method :dummy_method  # method_undefined: dummy_method
end