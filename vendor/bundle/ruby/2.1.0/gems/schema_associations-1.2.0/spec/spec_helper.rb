require 'simplecov'
require 'simplecov-gem-adapter'
SimpleCov.start "gem"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rspec'
require 'active_record'
require 'schema_associations'
require 'logger'
require 'connection'

ActiveRecord::Base.logger = Logger.new(File.open("spec.log", "w"))

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

def remove_all_models
    ObjectSpace.each_object(Class) do |c|
      next unless c.ancestors.include? ActiveRecord::Base
      next if c == ActiveRecord::Base
      next if c.name.blank?
      c.destroy_all rescue nil
      ActiveSupport::Dependencies.remove_constant c.name
    end
  end

SimpleCov.command_name "[Ruby #{RUBY_VERSION} - ActiveRecord #{::ActiveRecord::VERSION::STRING}]"
