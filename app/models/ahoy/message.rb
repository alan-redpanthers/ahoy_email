module Ahoy
  class Message
    include Mongoid::Document

    store_in collection: 'ahoy_messages'

    field :token, type: String
    field :to, type: String
    field :user_id, type: String
    field :user_type, type: String
    field :mailer, type: String
    field :subject, type: String
    field :sent_at, type: Time
    field :opened_at, type: Time
    field :clicked_at, type: Time

    belongs_to :user, AhoyEmail.belongs_to.merge(polymorphic: true)
  end
end
