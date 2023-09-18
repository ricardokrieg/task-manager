# frozen_string_literal: true

module Types
  class FilterType < Types::BaseObject
    field :story_points, String, null: true
  end
end
