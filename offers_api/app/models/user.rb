class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :organization
end
