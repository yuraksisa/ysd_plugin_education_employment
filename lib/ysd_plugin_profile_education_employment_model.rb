require 'ysd-md-user-profile' if not defined?Users::Profile

module Users
  
  # Opens the class Content to include the content photo
  class Profile
    include FieldSet::EducationEmployment
  end
  
end #Users
