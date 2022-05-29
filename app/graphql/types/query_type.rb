module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :team, Types::TeamType, null: false do
      description 'Find a team by ID'
      argument :id, ID, required: true
    end

    def team(id:)
      Team.find(id)
    end
  end
end
