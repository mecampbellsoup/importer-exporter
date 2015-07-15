## importer-exporter

* Accepts stock item data in CSV format and export it as JSON
* Expect to have other models and formats very soon, and so it needs to be easy to extend

### Usage

The following is an example of running this library's executable to convert CSV input to semantic JSON output.

It assumes you have a file called `input.csv` and want to pipe the program's output to a file called `output.json`.

`bin/import_export input.csv > output.json`

### Next steps

* Add test coverage
* Measure algorithmic complexity for large data sets
