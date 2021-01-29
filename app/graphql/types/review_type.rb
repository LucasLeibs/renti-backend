module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :zipcode, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
