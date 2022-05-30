module Mutations
  class CreateTeam < BaseMutation
    graphql_name 'CreateTeam'

    field :team, Types::TeamType, null: true
    field :result, Boolean, null: true

    argument :name, String, required: false

    def resolve(**args)
      team = Team.create(name: args[:name])
      {
        team: team,
        result: team.errors.blank?
      }
    end
  end
end
