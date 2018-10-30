class Boro < ApplicationRecord
  has_many :dcp_pumas
  has_many :pums
end
