# encoding: UTF-8
Encoding.default_internal = Encoding.default_external = 'UTF-8'

require "rubygems"
require "bundler/setup"
require "sinatra"
require "haml"
require "sass"

configure do
  set :haml, { :attr_wrapper => '"', :format => :html5 }
end



get "/" do
  haml :index, :locals => {:message => "world!"}
end
