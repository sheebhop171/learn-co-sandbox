require "bundler/setup"
require "explore_charlotte"
require_relative "explore_charlotte/version"
require_relative "explore_charlotte/cli"
require_relative "explore_charlotte/activity"
require_relative "explore_charlotte/scraper"
require 'pry'
require 'open-uri'


module ExploreCharlotte
  class Error < StandardError; end
  # Your code goes here...
end
