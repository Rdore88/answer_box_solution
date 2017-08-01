class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  require 'redcarpet'
  require 'redcarpet/render_strip'
  paginates_per 10

end
