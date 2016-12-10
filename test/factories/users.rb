# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user do
    name "MyString"
    kind 1
  end
end
