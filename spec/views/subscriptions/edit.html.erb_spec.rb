require 'spec_helper'

describe "subscriptions/edit" do
  before(:each) do
    @subscription = assign(:subscription, stub_model(Subscription,
      :plan_type => 1,
      :status => "MyString",
      :location_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit subscription form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subscription_path(@subscription), "post" do
      assert_select "input#subscription_plan_type[name=?]", "subscription[plan_type]"
      assert_select "input#subscription_status[name=?]", "subscription[status]"
      assert_select "input#subscription_location_id[name=?]", "subscription[location_id]"
      assert_select "input#subscription_user_id[name=?]", "subscription[user_id]"
    end
  end
end
