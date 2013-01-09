require 'ysd_md_fieldset_education_employment'
require 'ui/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender
require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener
require 'ysd_plugin_education_employment_aspect'

#
# Extension
#
module Huasi
  class EducationEmploymentExtension < Plugins::ViewListener
  
    # ========= Aspects ==================
    
    #
    # Retrieve an array of the aspects defined in the plugin
    #
    # The attachment aspect (complement)
    #
    def aspects(context={})
      
      app = context[:app]
      
      aspects = []
      aspects << ::Plugins::Aspect.new(:education_employment, app.t.aspect.education_employment, FieldSet::EducationEmployment, EducationEmploymentAspectDelegate.new)
                                               
      return aspects
       
    end        
  
  end #ProfileEducationAndEmploymentExtension
end #Huasi