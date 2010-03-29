require 'config'
log = File.new("sinatra.log", "a+")
$stdout.reopen(log)
$stderr.reopen(log)
run App