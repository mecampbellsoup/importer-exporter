module ImportExport
  class Exporter
    def initialize(data_collection)
      @data_collection = data_collection
    end

    def to_json
      data_collection.map { |obj| obj.to_json }
    end

    private

    attr_reader :data_collection
  end
end
