module ImportExport
  class CSVParser
    attr_reader :data

    def initialize(csv_file)
      @data = CSV.read(csv_file, headers: true)
    end
  end
end
