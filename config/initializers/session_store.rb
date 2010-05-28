# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rolodex_session',
  :secret      => 'b5e9b04dbf604cbe313d81dfd2c8904c6760a2c14b89e8bebcf3421d7b8b0566e68b3529a2c5195be29073a62a4228ab41f4037812c67717015697a872fb2b32'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
