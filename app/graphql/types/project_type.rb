module Types
  class ProjectType < Types::BaseObject
    field :id, Integer, null: false
    field :title, String, null: false
  end
end
