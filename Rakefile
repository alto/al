require 'rubygems'
require 'rake'
require 'bundler/gem_tasks'

require 'rake/testtask'
desc 'Test the al gem.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end
desc 'Default: run unit tests.'
task :default => :test
