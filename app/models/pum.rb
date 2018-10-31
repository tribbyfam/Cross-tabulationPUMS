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

  scope :over_65, -> { where age65plus: '1' }
  scope :under_65, -> { where age65plus: '2' }

  scope :wnh, -> { where mutu: '1' }
  scope :bnh, -> { where mutu: '2' }
  scope :his, -> { where mutu: '3' }
  scope :anh, -> { where mutu: '4' }
  scope :onh, -> { where mutu: '5' }
  scope :twonh, -> { where mutu: '6' }

  def self.import(file)
    # pums = []
    CSV.foreach(file.path, headers: true) do |row|
      # pums << Pum.new(row.to_hash)
      Pum.create! row.to_hash
    end
    # Pum.import pums, recursive: true
  end
end
