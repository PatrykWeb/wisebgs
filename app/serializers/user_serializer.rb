# frozen_string_literal: true

class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email
  has_one :profile
end
