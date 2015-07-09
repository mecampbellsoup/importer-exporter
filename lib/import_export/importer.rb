InvalidInputFileType = Class.new(StandardError)

module ImportExport
  class Importer
    def initialize(opts = {})
      @parser      = opts[:parser]
      @import_type = opts[:import_type]
    end
  end

end
