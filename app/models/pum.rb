class Pum < ApplicationRecord
  belongs_to :puma
  belongs_to :boro

  def self.import(file)
    # pums = []
    CSV.foreach(file.path, headers: true) do |row|
      # pums << Pum.new(row.to_hash)
      Pum.create! row.to_hash
    end
    # Pum.import pums, recursive: true
  end
end
