# frozen_string_literal: true

module Types
  class ScoreType < Types::BaseObject
    field :id, ID, null: false
    field :gymnast, Types::GymnastType, null: false
    field :fx, Float, null: false
    field :ph, Float, null: false
    field :sr, Float, null: false
    field :vt, Float, null: false
    field :pb, Float, null: false
    field :hb, Float, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
