class DcpPuma < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      DcpPuma.create! row.to_hash 
    end
  end
end
