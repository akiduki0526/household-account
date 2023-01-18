class Account < ApplicationRecord
  validates :user, presence: true
  validates :title_id, presence: true,numericality: { other_than: 1 , message: "can't be blank"}
  
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  belongs_to :title
end
