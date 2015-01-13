class Flavor < ActiveRecord::Base
  belongs_to :variety
  has_many :combo_flavors
  has_many :combos, through: :combo_flavors
end