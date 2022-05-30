module Mutations
  class UpdateTeam < BaseMutation

    field :team, Types::TeamType, null: true
    field :result, Boolean, null: true

    ## id必須
    argument :id, ID, required: true
    argument :name, String, required: false

    def resolve(**args)
      team = Team.find(args[:id])
      team.update(name: args[:name])
      {
        team: team,
        result: team.errors.blank?
      }
    end
  end
end
