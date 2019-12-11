# First method to change the name 

# class User < ApplicationRecord
#   self.table_name = "admin_users"
# end

# Second method to change the name

class AdminUser < ApplicationRecord

  has_and_belongs_to_many :pages

end
