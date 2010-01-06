require 'spec_helper'

describe "/rendering/that_action.html.erb" do
  it "should render a partial" do # Fails to fail under Mocha
    template.should_receive(:render).with(:partial => 'my_partial')
    
    render
  end
  
  it "should render a partial" do # Fails under Mocha
    template.should_receive(:render).with(:partial => 'my_partial')
    
    render
    
    template.verify_rendered
  end
end