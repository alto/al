Dir[File.dirname(__FILE__) + "/al/**/*.rb"].sort.each { |f| require File.expand_path(f) }
