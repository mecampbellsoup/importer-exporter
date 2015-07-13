module ImportExport
  class Runner
    def self.run(input_file)
      data = Importer.new(input_file).data

      Exporter.new(data).to_json
    end
  end
end
