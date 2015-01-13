class Variety < ActiveRecord::Base
  has_many :flavors
end