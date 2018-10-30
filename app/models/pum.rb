class Pum < ApplicationRecord
  belongs_to :dcp_puma
  belongs_to :boro

  scope :under_18, -> { where agegroups: '1' }
  scope :yr18_24, -> { where agegroups: '2' }
  scope :yr25_34, -> { where agegroups: '3' }
  scope :yr35_44, -> { where agegroups: '4' }
  scope :yr45_64, -> { where agegroups: '5' }
  scope :over_65, -> { where agegroups: '6' }

  scope :mn, -> { where borough: '1' }
  scope :bx, -> { where borough: '2' }
  scope :bk, -> { where borough: '3' }
  scope :qn, -> { where borough: '4' }
  scope :si, -> { where borough: '5' }

  scope :native, -> { where nativity: '1' }
  scope :foreign, -> { where nativity: '2' }

  def self.import(file)
    # pums = []
    CSV.foreach(file.path, headers: true) do |row|
      # pums << Pum.new(row.to_hash)
      Pum.create! row.to_hash
    end
    # Pum.import pums, recursive: true
  end
end
