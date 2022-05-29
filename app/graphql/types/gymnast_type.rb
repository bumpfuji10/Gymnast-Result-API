# frozen_string_literal: true

module Types
  class GymnastType < Types::BaseObject
    field :id, ID, null: false
    field :team, Types::TeamType, null: false
    field :name, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :score, [Types::ScoreType], null:false
  end
end
