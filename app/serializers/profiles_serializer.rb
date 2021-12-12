class ProfilesSerializer
  include JSONAPI::Serializer
  set_type :profile
  set_id :user_id
  attributes :name, :surname, :phone, :nip, :krs
  belongs_to :user
end
