require 'ui/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender

module Huasi
  #
  # Education and employment aspect
  #
  class EducationEmploymentAspectDelegate
    include ContentManagerSystem::Support
 
    #
    # Shows the hobbies information 
    #
    def custom(context={}, element, aspect_model)

      app = context[:app]
    
      renderer = UI::FieldSetRender.new('education_and_employment', app)      
      location_template = renderer.render('view', '', {:element => element})
        
    end   

    #
    # Information
    #
    def element_info(context={})
      app = context[:app]
      {:id => :education_employment, :description => "#{app.t.aspect.education_employment}"} 
    end

    #
    # Renders the tab
    #
    def element_form_tab(context={}, aspect_model)
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the photo information in the content form
    #
    def element_form(context={}, aspect_model)
      
      app = context[:app]
      
      renderer = ::UI::FieldSetRender.new('education_and_employment', app)      
      contact_form = renderer.render('form', 'em')    
      
    end



  end #EducationEmploymentAspectDelegate
end #Huasi

 