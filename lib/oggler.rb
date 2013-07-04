current_dir = File.expand_path(File.join('..', '..'), __FILE__)
lib_dir = File.join(current_dir, 'lib')
$LOAD_PATH.unshift lib_dir

require 'oggler/version'
# require 'oggler/errors'
require 'oggler/toggler'
require 'oggler/feature'
require 'oggler/ar_feature'
require 'oggler/store'

module Oggler
end
