require 'spec_helper'

describe "purchases/index" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :user_id => 1,
        :purchase_amount => "9.99",
        :office_id => 2,
        :note => "Note"
      ),
      stub_model(Purchase,
        :user_id => 1,
        :purchase_amount => "9.99",
        :office_id => 2,
        :note => "Note"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
