class Statement < ActiveRecord::Base
  has_many :organizations_statements
  has_many :organizations, through: :organizations_statements

  belongs_to :user
  belongs_to :offer
  belongs_to :status, class_name: "Term"
end
