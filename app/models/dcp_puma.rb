class DcpPuma < ApplicationRecord
  belongs_to boro
  has_many pums
end
