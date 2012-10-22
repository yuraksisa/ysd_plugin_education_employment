require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :education_employment do

   name=        'education and employment'
   author=      'yurak sisa'
   description= 'Add education and employment information'
   version=     '0.1'
   hooker       Huasi::EducationEmploymentExtension
   sinatra_extension Sinatra::EducationEmployment
end