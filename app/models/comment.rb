class Comment < ActiveRecord::Base
  # attr_accessible :body, :post
  belongs_to :post
  has_many :replies, dependent: :destroy
  include ActiveModel::ForbiddenAttributesProtection
end
