There's a fly in my RenderObserver
==================================

The view spec technique for setting expectations on renders seems to break silently when you use Mocha.

To demonstrate: run the specs in the app. All specs (all 2 of them) should fail.

    $ rake spec
    
    (in /Users/matt/Documents/work/RSpec/render_observer)
    
    RenderingController
    - should render the right template (FAILED - 1)
    
    /rendering/that_action.html.erb
    - should render a partial (FAILED - 2)
    
    1)
    'RenderingController should render the right template' FAILED
    expected "that_action", got "other_controller/thing.html.erb"
    ./spec/controllers/rendering_controller_spec.rb:7:
    
    2)
    Spec::Mocks::MockExpectationError in '/rendering/that_action.html.erb should render a partial'
    Mock "render_proxy" expected :render with ({:partial=>"my_partial"}) once, but received it 0 times
    ./spec/views/rendering/that_action.html.erb_spec.rb:5:
    
    Finished in 0.013484 seconds
    
    2 examples, 2 failures


Then, re-run the specs using Mocha (there's a env variable for this, see `spec_helper.rb`):

    $ rake spec USE_MOCHA=1
    
    (in /Users/matt/Documents/work/RSpec/render_observer)
    
    RenderingController
    - should render the right template (FAILED - 1)
    
    /rendering/that_action.html.erb
    - should render a partial
    
    1)
    'RenderingController should render the right template' FAILED
    expected "that_action", got "other_controller/thing.html.erb"
    ./spec/controllers/rendering_controller_spec.rb:7:
    
    Finished in 0.012591 seconds
    
    2 examples, 1 failure

One of the specs is now magically passing... I haven't been able to figure out why yet.