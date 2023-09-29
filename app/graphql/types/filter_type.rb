# frozen_string_literal: true

module Types
  class FilterType < Types::BaseObject
    field :story_points, String, null: true
    field :only_tickets, Boolean, null: true
    field :project, String, null: true
  end
end
