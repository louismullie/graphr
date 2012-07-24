require 'test/unit'
$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
Dir["./tests/*.rb"].each { |f| require f unless f.include?('test.rb') }