# == Schema Information
#
# Table name: utility_exemptions
#
#  id                       :bigint           not null, primary key
#  exemption_expiration     :datetime
#  exemption_percentage     :integer          default(100), not null
#  reason                   :text
#  redistribution_strategy  :enum             default("management"), not null
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  management_group_user_id :bigint           not null
#  user_group_rental_id     :bigint           not null
#  utility_item_id          :bigint           not null
#
# Indexes
#
#  index_utility_exemptions_on_management_group_user_id  (management_group_user_id)
#  index_utility_exemptions_on_user_group_rental_id      (user_group_rental_id)
#  index_utility_exemptions_on_utility_item_id           (utility_item_id)
#
# Foreign Keys
#
#  fk_rails_...  (management_group_user_id => management_group_users.id)
#  fk_rails_...  (user_group_rental_id => user_group_rentals.id)
#  fk_rails_...  (utility_item_id => utility_items.id)
#
require "test_helper"

class UtilityExemptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end