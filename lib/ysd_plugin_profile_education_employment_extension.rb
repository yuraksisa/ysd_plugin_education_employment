require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Extension
#
module Huasi
  class ProfileEducationEmploymentExtension < Plugins::ViewListener
  
    # ---------------- Profile Hooks -------------------------      
          
    #
    # Adds fields to edit the education and employment information in the profile form
    #
    def profile_form(context={})
    
      app = context[:app]
    
      education_employment_form = <<-EDUCATION_EMPLOYMENT_FORM

        <fieldset>
          <legend><%= t.profile_form.education_and_employment.title %></legend>        
          <div class="formrow">
            <label for="education_and_employment_employment" class="fieldtitle"><%= t.profile_form.education_and_employment.employment %></label>
            <input type="text" name="education_and_employment_employment" id="education_and_employment_employment" maxlength="80" class="fieldcontrol" <% if @document %> value="<%= @document.education_and_employment_employment if @document.education_and_employment_employment%>" <% end %> />
          </div>        
          <div class="formrow">
            <label for="education_and_employment_education" class="fieldtitle"><%= t.profile_form.education_and_employment.education %></label>
            <input type="text" name="education_and_employment_education" id="education_and_employment_education" maxlength="80" class="fieldcontrol" <% if @document %> value="<%= @document.education_and_employment_education if @document.education_and_employment_education%>" <% end %> />
          </div>
        </fieldset>
                
      EDUCATION_EMPLOYMENT_FORM
    
      if String.method_defined?(:encode)
        education_employment_form.encode!('UTF-8')
      end
        
      app.erb education_employment_form    
    
    end
        
    #
    # Shows the education and employment information in the profile
    #
    def profile(context={}) 
    
      app = context[:app]
    
      education_employment = <<-EDUCATION_EMPLOYMENT
      
        <% if @document.education_and_employment_employment and @document.education_and_employment_employment.strip.length > 0 %>
          <div><span class="profile_literal"><%= t.profile.education_and_employment.employment%></span> <%=@document.education_and_employment_employment%></div>      
        <% end %>
        <% if @document.education_and_employment_education and @document.education_and_employment_education.strip.length > 0 %>
          <div><span class="profile_literal"><%= t.profile.education_and_employment.education%></span> <%=@document.education_and_employment_education%></div>      
        <% end %>
        
      EDUCATION_EMPLOYMENT
 
      if String.method_defined?(:encode)
        education_employment.encode!('UTF-8')
      end
        
      app.erb education_employment  
    
    end    

    
  
  end #ProfileEducationAndEmploymentExtension
end #Huasi