class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :updated_at

  has_many :children do
    object.children #.where(created_by: current_user)
  end
end
