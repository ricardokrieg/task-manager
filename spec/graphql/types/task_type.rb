require 'rails_helper'

module Types
  RSpec.describe TaskType, type: :request do
    let(:task) { create(:task) }
    let(:variables) { { id: task.id } }

    it 'returns the task' do
      post '/graphql', params: { query: query(variables:) }

      json = JSON.parse(response.body)
      data = json['data']['task']

      expect(data).to include(
        'id' => task.id.to_s,
        'title' => task.title
      )
    end

    def query(variables:)
      <<~GQL
        query {
          task(
            id: #{variables[:id]}
          ) {
            id
            title
          }
        }
      GQL
    end
  end
end
