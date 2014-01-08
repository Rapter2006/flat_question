class Organization < ActiveRecord::Base
  has_many :users
  has_many :offers

  has_many :organizations_statements
  has_many :statements, through: :organizations_statements

  belongs_to :asset
end
