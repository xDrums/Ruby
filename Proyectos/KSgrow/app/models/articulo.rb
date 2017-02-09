class Articulo < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: {minimum: 20}
end
