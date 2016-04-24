class Document < ApplicationRecord
  validates :title, presence: true

  has_ancestry orphan_strategy: :adopt
end
