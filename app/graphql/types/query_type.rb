module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :tasks, [TaskType], null: false
    field :completed_tasks, [TaskType], null: false
    field :filters, FilterType, null: false

    def tasks
      Task
        .includes(:tasks)
        .root
        .pending
    end

    def completed_tasks
      Task
        .includes(:tasks)
        .root
    end

    def filters
      OpenStruct.new(story_points: nil, only_tickets: nil)
    end
  end
end
