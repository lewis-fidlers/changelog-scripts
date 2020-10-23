#!/usr/bin/env ruby
require 'yaml'
@current_branch ||= `git symbolic-ref --short HEAD`

def should_branch_be_checked?
  return true
end

def build_branch_prefix_regex
  if config["eligible_branch_prefixes"].any?
    return "(#{config['eligible_branch_prefixes'].join("#{config['eligible_branch_delimiter']}|")})"
  end
end

def config
  @config ||= YAML.load_file('config.yml')
end
