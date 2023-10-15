# frozen_string_literal: true

namespace :tasks do
  task update_priorities: :environment do
    attributes = {}
    Task.pending.order(priority: :asc).each_with_index do |task, index|
      attributes[task.id] = { id: task.id, priority: index + 1 }
    end

    Task.transaction do
      Task.update(attributes.keys, attributes.values)
    end
  end
end
