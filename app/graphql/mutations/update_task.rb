module Mutations
  class UpdateTask < BaseMutation
    argument :id, ID

    argument :priority, Float, required: false
    argument :tags, [String], required: false

    field :task, Types::TaskType
    field :errors, [String], null: false

    def resolve(id:, priority:, tags:)
      task = Task.find(id)

      task.assign_attributes(priority:, tags:)

      if task.save
        { task:, errors: [] }
      else
        { errors: task.errors.full_messages }
      end
    end
  end
end
