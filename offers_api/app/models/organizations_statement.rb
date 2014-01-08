class OrganizationsStatement < ActiveRecord::Base
  belongs_to :organizations
  belongs_to :statements
end
