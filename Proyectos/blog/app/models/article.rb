class Article < ApplicationRecord
  #la tabla => articles
  #campos => article.title() => 'titulo articulo'
  #escribir metodoss
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: {minimum: 20}

end
