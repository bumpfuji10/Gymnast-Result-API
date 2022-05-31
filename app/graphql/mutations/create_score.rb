module Mutations
  class CreateScore < BaseMutation
    field :score, Types::ScoreType, null: false
    field :result, Boolean, null: false

    argument :gymnast_id, ID, required: true
    argument :fx, Float, required: true
    argument :ph, Float, required: true
    argument :sr, Float, required: true
    argument :vt, Float, required: true
    argument :pb, Float, required: true
    argument :hb, Float, required: true

    def resolve(**args)
      gymnast = Gymnast.find(args[:gymnast_id])
      score = gymnast.scores.create(fx: args[:fx], ph: args[:ph], sr: args[:sr], vt: args[:vt], pb: args[:pb], hb: args[:hb])
      {
        score: score,
        result: gymnast.errors.blank?
      }
    end

  end
end
