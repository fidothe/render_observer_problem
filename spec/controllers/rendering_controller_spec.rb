require 'spec_helper'

describe RenderingController do
  it "should render the right template" do
    get :that_action
    
    should render_template(:that_action)
  end
end
