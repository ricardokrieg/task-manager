module Mutations
  class CreateTask < BaseMutation
    argument :title, String
    argument :tags, [String]
    argument :priority, Float

    field :task, Types::TaskType
    field :errors, [String], null: false

    def resolve(title:, tags:, priority:)
      task = Task.new(title:, tags:, priority:)

      if task.save
        { task:, errors: [] }
      else
        { errors: task.errors.full_messages }
      end
    end
  end
end
