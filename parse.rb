# @example
# curl https://raw.githubusercontent.com/Ghosh/uiGradients/master/gradients.json | ruby parse.rb

require "json"
require "erb"
require 'active_support/core_ext/string/inflections'

def parse(body)
  @colors = JSON.parse(body).map do |color|
    {
        "name" => color["name"],
        "classified_name" => color["name"].split(" ").join(""),
        "camelized_name" => color["name"].split(" ").join("").camelize(:lower), # dirty
        "start_color_hex" => color["colour1"],
        "end_color_hex" => color["colour2"]
    }
  end
end

def render_h
  ERB.new(File.read("UIColor+uiGradients.h.erb")).result()
end

def render_m
  ERB.new(File.read("UIColor+uiGradients.m.erb")).result()
end

def write
  File.open("UIColor+uiGradients.h", "w") do |f|
    f.write render_h
  end

  File.open("UIColor+uiGradients.m", "w") do |f|
    f.write render_m
  end
end

json_string = ARGF.read
parse(json_string)
write()