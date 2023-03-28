class Article < ApplicationRecord
  extend FriendlyId
  include Visible
  has_many :comments, dependent: :destroy

  friendly_id :hashid, use: :slugged
  before_validation :set_hash_id, prepend: true, if: Proc.new{ |article| article.hashid.nil? }


  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  private
    def set_hash_id
      self.hashid = SecureRandom.urlsafe_base64(5)
    end
end
