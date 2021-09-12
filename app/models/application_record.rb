class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #validates :name, length: {minimum:2}
  #validates :email, presence: true
  #validates :password, presence: true
end
