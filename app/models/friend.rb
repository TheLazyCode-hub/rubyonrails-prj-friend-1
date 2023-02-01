class Friend < ApplicationRecord
    belongs_to :user
    validates :first_name, :email, :phone, :address, presence: true
    validates :first_name, length: {minimum:2, maximum:50}
    validates :first_name, format: {with: /\A[a-zA-Z]+\z/, message: "- Only letters allowed in name"}
    validates :phone, numericality: true, length: {minimum:10, maximum:12}
    validates :email, format: Devise.email_regexp
    validates :address, length: {minimum:4, maximum:50}
    
end
