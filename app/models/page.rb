class Page < ApplicationRecord

  # { :optional => false }
  # we could save subject without parent (belongs_to optional)
  belongs_to :subject, { :optional => false }

  has_and_belongs_to_many :admin_users

  has_many :sections

end
