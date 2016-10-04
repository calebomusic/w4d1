class Comment < ActiveRecord::Base
  validates :body, :object_id, presence: true

  belongs_to :commentable,
    polymorphic: true
end
