class Building < ApplicationRecord
  scope :cari_pemilik, -> (query){where("lower(pemilik) like lower(?) ", "%#{query}%")}
end

# where("lower(pemilik) like lower(?) or lower(email) like lower(?) or stambuk like ? ", "%#{query}%", "%#{query}%", "%#{query}%")
