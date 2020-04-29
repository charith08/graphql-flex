class Mutations::CreateUser < Mutations::BaseMutation
  argument :email, String, required: true
  argument :password, String, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(email:, password:)
    user = User.new(email: email, password: password)
    if user.save
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end

end
