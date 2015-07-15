module ImportExport
  class ModifierFactory
    attr_reader :count, :modifiers, :data

    def initialize(hash_of_key_value_modifiers)
      @data = hash_of_key_value_modifiers.reject { |_, v| v.nil? }
      @count = data.size / 2
      @modifiers = Array.new(count, [])
      set_modifiers!
    end

    def set_modifiers!
      return [] if count.zero?

      (0 .. count - 1).each do |i|
        modifiers_at_index =
          data.select { |k, _| k.match((i + 1).to_s) }.values
        modifiers[i] = {
          name:  modifiers_at_index[0],
          price: modifiers_at_index[1]
        }
      end
    end
  end
end
