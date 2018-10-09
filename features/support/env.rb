require 'cucumber'
require 'httparty'
require 'pry'
require 'rspec'
require 'json'



Base_url = YAML.load_file './features/config/url.yml'
