class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  has_many :collaborating_users, through: :collaborators, source: :user

  default_scope { order("created_at DESC") }

  scope :visible_to, -> (user) { user && (user.premium? || user.admin?) ? all : joins(@wikis).where(:private => false) }
end
