module ImportExport
  class Adapter
    # This class takes a row of CSV data
    # and casts it to a Ruby object
    def initialize(row)
      @row = row
    end

    def to_json
      # returns our domain-specific hash
      # with modifiers nested as an array of hashes
      without_modifiers = row.to_h.reject { |k, _| k.match(/modifier/) }
      without_modifiers["modifiers"] = modifiers
      JSON(without_modifiers).gsub(/\"/, '\'')
    end

    def modifiers
      @modifiers ||=
        begin
          modifiers = row.to_h.select { |k, _| k =~ /modifier/ }
          ModifierFactory.new(modifiers).modifiers
        end
    end

    private

    attr_reader :row
  end
end
