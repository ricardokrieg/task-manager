module Mutations
  class CompleteTask < BaseMutation
    argument :id, ID

    field :task, Types::TaskType
    field :errors, [String], null: false

    def resolve(id:)
      task = Task.find(id)

      if task.completed_at.present?
        return { task:, errors: [] }
      end

      task.assign_attributes(completed_at: Time.zone.now)

      if task.save
        { task:, errors: [] }
      else
        { errors: task.errors.full_messages }
      end
    end
  end
end
