json.array! @profiles do | profile |
  json.id profile.id
  json.name profile.name
  json.surname profile.surname
  json.phone profile.phone
  json.nip profile.nip
  json.krs profile.krs
end