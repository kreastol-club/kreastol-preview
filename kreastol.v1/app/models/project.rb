class Project < ApplicationRecord
  has_rich_text :body
  has_one_attached :thumbnail
end
