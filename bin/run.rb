require_relative '../config/environment'


$prompt = TTY::Prompt.new#(symbols:{marker:""}) 
$font = TTY::Font.new
$pastel = Pastel.new
cli = Cli.new 
cli.run 


