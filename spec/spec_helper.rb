require 'simplecov'
SimpleCov.start
require_relative '../lib/cop_detective'
require_relative '../lib/validator'
require_relative '../lib/assigner'
require 'active_model'
require 'active_record'
require 'database_cleaner'
require_relative '../app/models/user.rb'




ActiveRecord::Base.establish_connection(:adapter => "sqlite3", 
                                       :database => ":memory:")

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :users, :force => true do |t|
    t.string :name
    t.string :password_digest
  end
end  
                   
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
