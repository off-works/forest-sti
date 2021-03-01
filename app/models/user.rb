class User < ActiveRecord::Base

  validates :name, uniqueness: false, allow_nil: false

end
