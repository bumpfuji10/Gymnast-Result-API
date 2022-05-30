module Mutations
  class CreateGymnast < BaseMutation
    graphql_name 'CreateGymnast'

    field :gymnast, Types::GymnastType, null: true
    field :result, Boolean, null: true

    argument :team_id, ID, required: true
    argument :name, String, required: false

    def resolve(**args)
      team = Team.find(args[:team_id])
      gymnast = team.gymnasts.create(name: args[:name])
      {
        gymnast: gymnast,
        result: team.errors.blank?
      }
    end
  end
end
