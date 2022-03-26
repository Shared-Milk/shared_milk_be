class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true
  argument :email, String, required: true
  argument :phone, String, required: true
  argument :bio, String, required: true
  argument :location, String, required: true
  argument :donor_status, Integer, required: true

  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(name:, email:, phone:, bio:, location:, donor_status:)
    user = User.new(name: name, email: email, phone: phone, bio: bio, location: location, donor_status: donor_status)

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
