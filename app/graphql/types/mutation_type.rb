module Types
  class MutationType < Types::BaseObject
    field :create_task, mutation: Mutations::CreateTask
    field :complete_task, mutation: Mutations::CompleteTask
    field :update_task, mutation: Mutations::UpdateTask
  end
end
