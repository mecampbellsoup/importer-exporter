InvalidInputFileType = Class.new(StandardError)

module ImportExport
  class Importer
    attr_reader :extension, :parser

    def initialize(file_path)
      @extension = File.extension(file_path)

      raise InvalidInputFileType, "Only CSV filetypes permitted for now." unless extension.match(/csv/)

      @parser = CSVParser.new(file_path)
    end

    def data
      @data ||= parser.rows.map { |row| Adapter.new(row) }
    end
  end
end
