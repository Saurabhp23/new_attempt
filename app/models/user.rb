class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :about, presence: true, length: { minimum: 10, maximum: 300 }
end