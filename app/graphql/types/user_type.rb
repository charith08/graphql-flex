module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: false
    field :projects, [Types::ProjectType], null: true
    field :projects_count, Integer, null: true

    def projects_count
      object.projects.size
    end

  end
end
