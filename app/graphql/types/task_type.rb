# frozen_string_literal: true

module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :priority, Float, null: false
    field :tags, [String], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :completed_at, GraphQL::Types::ISO8601DateTime
    field :tasks, [TaskType], null: false
  end
end
