FactoryBot.define do
    factory :item do
        name { Faker::Name.unique.name }
        done { false }
        todo
        # trait :with_todo_id do
        #     association :todo
        # end
    end
end