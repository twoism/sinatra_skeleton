RACK_ENV = ENV["RACK_ENV"] ||= "development" unless defined? RACK_ENV
ROOT_DIR = File.dirname(__FILE__) + '/../' unless defined? ROOT_DIR

APP_DIRS = %w{routes models initializers}

APP_DIRS.each {|dir| $LOAD_PATH << dir }

def routes &block
  App.class_eval &block
end

require 'rubygems'
require "sinatra"
require "haml"
require "light_mongo"
require "active_support"
require 'app'