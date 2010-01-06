require 'spec_helper'

describe "/rendering/that_action.html.erb" do
  it "should render a partial" do
    template.should_receive(:render).with(:partial => 'my_partial')
    
    render
  end
end