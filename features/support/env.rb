#coding: utf-8

require 'capybara'
require 'capybara/cucumber'
require 'capybara/mechanize'
require 'rspec'


Capybara.app_host = 'http://www.yahoo.co.jp/'
Capybara.default_driver = :mechanize
Capybara.app="fake"
