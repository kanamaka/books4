class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, length: {minmum:2}
  validates :email, presence: true
  validates :password, presence: true
end
