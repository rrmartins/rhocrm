# these are Oracle-specific Templater::Generator templates
Rhocrm::AppGenerator.add_vendor_templates :picklist_wsdl, :oracle_on_demand do |template,name,crm|
  template.source = File.join('..','..','vendor','oracle_on_demand','wsdl','Picklist.wsdl')
  template.destination = File.join("#{name}", 'vendor','oracle_on_demand','wsdl', 'Picklist.wsdl')
end

Rhocrm::AppGenerator.add_vendor_templates :settings_yml, :oracle_on_demand do |template,name,crm|
  template.source = File.join('..','..','vendor','oracle_on_demand','settings','settings.yml')
  template.destination = File.join("#{name}", 'vendor','oracle_on_demand','settings','settings.yml')
end

Rhocrm::SourceGenerator.add_vendor_templates :object_wsdl, :oracle_on_demand do |template,name,crm|
  class_name = name.gsub('-', '_').camel_case
  template.source = File.join('..','..','vendor','oracle_on_demand','wsdl',"#{class_name}.wsdl")
  template.destination = File.join('vendor','oracle_on_demand','wsdl', "#{class_name}.wsdl")
end

Rhocrm::SourceGenerator.add_vendor_templates :object_yml, :oracle_on_demand do |template,name,crm|
  class_name = name.gsub('-', '_').camel_case
  template.source = File.join('..','..','vendor','oracle_on_demand','settings',"#{class_name}.yml")
  template.destination = File.join('vendor','oracle_on_demand','settings', "#{class_name}.yml")
end
