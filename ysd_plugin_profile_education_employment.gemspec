Gem::Specification.new do |s|
  s.name    = "ysd_plugin_profile_education_employment"
  s.version = "0.1"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-03-27"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml','static/**/*.*'] 
  s.description = "Profile extension for managing education and employment information"
  s.summary = "Profile extension for managing education and employment information"
  
  s.add_runtime_dependency "ysd_core_plugins"
  s.add_runtime_dependency "ysd_md_profile"
  
end