class Dog < ApplicationRecord
  has_many :strolls
  belongs_to :dogsitter
  has_many :dogsitters, through: :stroll
  belongs_to :city
end
