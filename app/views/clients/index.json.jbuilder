json.array!(@clients) do |client|
  json.extract! client, :id, :name, :born_on, :occupation, :line1, :line2, :city, :state, :zip, :primary_social, :spouse_social, :spouse_name, :spouse_born_on, :spouse_occupation, :you_dependent, :support, :dependent1_name, :dependent1_born_on, :dependent1_social, :dependent1_relationship, :dependent1_home, :dependent1_disabled, :dependent1_student, :dependent2_name, :dependent2_born_on, :dependent2_social, :dependent2_relationship, :dependent2_home, :dependent2_disabled, :dependent2_student, :dependent3_name, :dependent3_born_on, :dependent3_social, :dependent3_relationship, :dependent3_home, :dependent3_disabled, :dependent3_student, :dependent4_name, :dependent4_born_on, :dependent4_social, :dependent4_relationship, :dependent4_home, :dependent4_disabled, :dependent4_student, :dependent5_name, :dependent5_born_on, :dependent5_social, :dependent5_relationship, :dependent5_home, :dependent5_disabled, :dependent5_student, :dependent1_support, :dependent2_support, :dependent3_support, :dependent4_support, :dependent5_support
  json.url client_url(client, format: :json)
end
