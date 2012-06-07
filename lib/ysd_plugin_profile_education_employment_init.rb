require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_profile_education_employment_extension'

Plugins::SinatraAppPlugin.register :profile_education_employment do

   name=        'profile education employment'
   author=      'yurak sisa'
   description= 'Add education and employment information to the profile'
   version=     '0.1'
   hooker       Huasi::ProfileEducationEmploymentExtension
   sinatra_extension Sinatra::ProfileEducationEmployment
end