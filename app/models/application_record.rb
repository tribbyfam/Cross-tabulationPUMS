class ApplicationRecord < ActiveRecord::Base
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  
  self.abstract_class = true

  scope :under_18, -> { where agegroups: '1' }
  scope :yr18_24, -> { where agegroups: '2' }
  scope :yr25_34, -> { where agegroups: '3' }
  scope :yr35_44, -> { where agegroups: '4' }
  scope :yr45_64, -> { where agegroups: '5' }
  scope :over_65, -> { where agegroups: '6' }
  
end
