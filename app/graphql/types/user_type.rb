module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :password_digest, String, null: false
    field :reviews, [Types::ReviewType], null: true
    field :review_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def review_count 
      object.reviews.size
    end
  end
end
