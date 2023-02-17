class User < ApplicationRecord
  validates :name, presence: true
  validates :about, presence: true
end