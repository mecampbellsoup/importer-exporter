module ImportExport
  class CSVParser
    def initialize(csv_file)
      raise InvalidInputFileType, "Only CSV filetypes permitted for now." unless File.extname(csv_file) == ".csv"

      @csv_file = csv_file
      @data     = CSV.read(csv_file)
      @headers  = data[0]
    end

    def rows
      # code that parses the CSV file and returns an array of hashes
      data[1, -1].map { |row| JSONAdapter.new(row) }
    end
  end
end
