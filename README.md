# sampleRubyGetRequestApp
This application serves as guide for developing the `REST API` with `Ruby on Rails`
for transferring database entries (from `Imonggo C4 to C3`) using `GET` Requests.

To implement the Rails Application, the following command line should be executed first:

`rails generate model request_handler username pwd prodID tokenID`

Since the Ruby Application uses puts and gets statements for i/o handling, the Rails Application uses
`index.html.erb` of the model and replaces the statements with form fields using
Embedded Ruby.

