# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_web_git_rails_session',
  :secret      => '4893158b3a63c99a992f57ffde6c38529aa2d5e050754d1ecd37fcd496af9bfc25674fb7b1b4868d5c209c45b70bcd4fe836327a00e9d7063e3c45387ed200b9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
