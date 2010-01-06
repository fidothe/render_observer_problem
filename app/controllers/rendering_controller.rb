class RenderingController < ApplicationController
  def that_action
    render :template => 'other_controller/thing.html.erb'
  end
end
