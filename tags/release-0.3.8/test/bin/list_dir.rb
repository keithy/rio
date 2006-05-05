#!/usr/local/bin/ruby

# reads from standard input and writes the number
# of lines to standard output
# used to test cmdpipe Rios

$:.unshift File.expand_path(File.dirname(__FILE__)+'/../../lib/')
require 'rio'

dir = ARGV.shift || '.'
rio(dir).chdir {
  puts rio.to_a
}

