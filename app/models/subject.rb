class Subject < ApplicationRecord

  # Singular vs plural
  # has_one :page
  has_many :pages

  # lambda vs methods
  # lambda scope is ran at runtime instead of init time

  # extra methods/scope for the Subject object
  # Subject.search("weeboo")

  scope :visible, lambda { where :visible => true }
  scope :invisible, lambda { where(:visible => false )}

  scope :sorted, lambda { order("position ASC") }
  scope :newest_first, lambda { order :created_at => :desc }
  # partial match works with LIKE
  scope :search, lambda { |query|
    where(["name LIKE ?", "%#{query}%"])
  }

end
