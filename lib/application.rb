# require 'rubygems'
# require 'bundler/setup'
# Bundler.require(:default)
require 'octokit'
require 'awesome_print'
require 'table_print'
require 'pry'
require 'active_support/core_ext/time'
require 'active_support/time_with_zone'

class App
  def self.root
    @root ||= File.dirname(File.expand_path(__dir__))
  end

  def self.cache
    @cache ||= Pa::Cache.new '~/.pa'
  end

  def self.repos
    @repos ||= IO.readlines(File.expand_path('~/.pa/repos'), chomp: true)
  end

  def self.config
    OpenStruct.new(
      timezone: ENV.fetch('TIMEZONE', 'Asia/Shanghai'),
      token: ENV.fetch('TOKEN')
    )
  end
end

Dir["#{App.root}/lib/pa/*.rb"].sort.each { |file| require_relative file }
