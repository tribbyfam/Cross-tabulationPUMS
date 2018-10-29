class ApplicationRecord < ActiveRecord::Base
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  
  self.abstract_class = true
end
