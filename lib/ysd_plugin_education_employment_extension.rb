require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Extension
#
module Huasi
  class EducationEmploymentExtension < Plugins::ViewListener
  
    # ---------------- Profile Hooks -------------------------      
          
    #
    # Adds fields to edit the education and employment information in the profile form
    #
    def profile_form(context={})
    
      app = context[:app]
    
      renderer = UI::FieldSetRender.new('education_and_employment', app)      
      location_form = renderer.render('form')
       
    end
        
    #
    # Shows the education and employment information in the profile
    #
    def profile(context={}) 
    
      app = context[:app]
    
      renderer = UI::FieldSetRender.new('education_and_employment', app)      
      location_template = renderer.render('view')
    
    end    

    
  
  end #ProfileEducationAndEmploymentExtension
end #Huasi