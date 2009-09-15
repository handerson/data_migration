class <%= class_name.underscore.camelize %> < ActiveRecord::Migration
  def self.up<% attributes.each do |attribute| %>
    <%= migration_action %>_column :<%= table_name %>, :<%= attribute.name %><% if migration_action == 'add' %>, :<%= attribute.type %><% end -%>
    <%- end %>
  end
end