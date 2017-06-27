class Wiki < ActiveRecord::Base
  belongs_to :user

  default_scope { order("created_at DESC") }

  scope :visible_to, -> (user) { user && (user.premium? || user.admin?) ? all : joins(@wikis).where(:private => false) }
end
