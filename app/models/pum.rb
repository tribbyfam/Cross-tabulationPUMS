class Pum < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'

  def self.import(file)
    pums = []
    CSV.foreach(file.path, headers: true) do |row|
      pums << Pum.new(row.to_hash)
    end
    Pum.import pums, recursive: true
  end
end
