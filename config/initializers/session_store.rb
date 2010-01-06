# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_render_observer_session',
  :secret      => '125a8cd6eaeb8ea88aa5785aafed3bdb7e2dc9273d187b3f8be01ab53ecbe9b54c10e0e1bba8daf8d4aeb9155afbde7e3998eba78a0afcee124cb9147f99cd98'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
