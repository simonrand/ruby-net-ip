module Net
  module IP
    # Class for working with ip rules.
    class Rule
      # Create a new rule object
      # @example Create a rule to use a different route table
      #  Net::IP::Rule.new(:to => '1.2.3.4', :table => 'custom')
      # @note This does NOT add the entry to the ip rules. See {Rule::Collection#add} for creating new rules in the ip rule list.
      # @param params {Hash}
      attr_reader :params_string
      def initialize(params = {})
        str = ""
        params.each do |k,v|
          instance_variable_set("@#{k}", v)
          str << "#{k} #{v}"
        end
        :params_string = str 
      end

      def to_params
        :params_string
      end
    end
  end
end
