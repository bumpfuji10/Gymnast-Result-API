module Mutations
  class UpdateGymnast < BaseMutation
    graphql_name 'UpdateGymnast'

    field :gymnast, Types::GymnastType, null: true
    field :result, Boolean, null: true

    ## required...必須か否か
    argument :id, ID, required: true
    argument :team_id, ID, required: true
    argument :name, String, required: false
    argument :age, Integer, required: false

    def resolve(**args)
      gymnast = Gymnast.find(args[:id])
      gymnast.update(name: args[:name], age: args[:age])
      {
        gymnast: gymnast,
        result: gymnast.errors.blank?
      }
    end
  end
end
