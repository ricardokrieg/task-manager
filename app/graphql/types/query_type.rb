module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :tasks, [TaskType], null: false

    def tasks
      Task
        .includes(:tasks)
        .root
        .pending
    end
  end
end
