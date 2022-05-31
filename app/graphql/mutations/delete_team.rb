module Mutations
  class DeleteTeam < BaseMutation
    field :team, Types::TeamType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true

    def resolve(**args)
      team = Team.find(args[:id])
      team.destroy
      {
        team: team,
        result: team.errors.blank?
      }
    end
  end
end
