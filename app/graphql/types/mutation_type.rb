module Types
  class MutationType < Types::BaseObject
    field :update_gymnast, mutation: Mutations::UpdateGymnast
    field :create_score, mutation: Mutations::CreateScore
    field :create_gymnast, mutation: Mutations::CreateGymnast
    field :delete_team, mutation: Mutations::DeleteTeam
    field :update_team, mutation: Mutations::UpdateTeam
    field :create_team, mutation: Mutations::CreateTeam
  end
end
