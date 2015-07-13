module ImportExport
  class CSVParser
    attr_reader :csv_file, :data, :headers, :rows

    def initialize(csv_file)
      @csv_file = csv_file
      @data     = CSV.read(csv_file)
      @headers  = data[0]
      @rows     = data[1 .. -1]
    end
  end
end
