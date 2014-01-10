class Organization < ActiveRecord::Base
  has_many :users
  has_many :offers

  has_many :organizations_statements
  has_many :statements, through: :organizations_statements

  belongs_to :asset


  def as_json(options = {})
    options[:only] = [:name, :contacts, :about]
    super(options)
  end
end
