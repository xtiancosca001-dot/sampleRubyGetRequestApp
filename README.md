# sampleRubyGetRequestApp
This application serves as guide for developing the REST API for transferring database 
entries (from Imonggo C4 to C3) using GET Requests.

For the Real Thing, the following command line is executed:

`rails generate model request_handler username pwd prodID tokenID`

Since the Ruby Application uses puts and gets for i/o handling, the real application uses
index.html.erb of the model and replaces the puts/gets statements with form fields using
Embedded Ruby.

