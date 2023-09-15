require 'rails_helper'

module Mutations
  RSpec.describe CreateTask, type: :request do
    let(:title) { FFaker::Lorem.phrase }
    let(:variables) { { title: } }

    describe '.resolve' do
      it 'creates a task' do
        expect do
          post '/graphql', params: { query: query(variables:) }
        end.to change { Task.count }.by(1)
      end

      it 'returns a task' do
        post '/graphql', params: { query: query(variables:) }

        json = JSON.parse(response.body)
        data = json['data']['createTask']['task']

        expect(data).to include(
          'id' => be_present,
          'title' => title
        )
      end

      context 'with invalid attributes' do
        let(:title) { '' }

        it 'doesn\'t create a task' do
          expect do
            post '/graphql', params: { query: query(variables:) }
          end.not_to(change { Task.count })
        end

        it 'returns an error message' do
          post '/graphql', params: { query: query(variables:) }

          json = JSON.parse(response.body)
          errors = json['data']['createTask']['errors']

          expect(errors).not_to be_empty
        end
      end
    end

    def query(variables:)
      <<~GQL
        mutation {
          createTask(
            input: {
              title: "#{variables[:title]}"
            }
          ) {
            task {
              id
              title
            }
            errors
          }
        }
      GQL
    end
  end
end
