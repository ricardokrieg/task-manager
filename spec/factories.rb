FactoryBot.define do
  factory(:task) do
    title { FFaker::Lorem.phrase }
  end
end
