# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :retweet, :class => 'Retweets' do
    tweet_id 1
    user_id 1
  end
end
