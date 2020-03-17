module ApplicationHelper
    def link_to_add_chapter(name, f, association)
        new_object = f.object.send(association).klass.new
        id = new_object.object_id
        fields = f.fields_for(association, new_object, child_index: id) do |builder|
          render('tutos/render_form/element_chapter', f: builder)
        end
        link_to(name, '#', class: "add_chapter btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
    end

    def link_to_add_code(name, f, association)
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields = f.fields_for(association, new_object, child_index: id) do |builder|
        render('tutos/render_form/element_code', f: builder)
      end
      link_to(name, '#', class: "add_code btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_text(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render('tutos/render_form/element_text', f: builder)
    end
    link_to(name, '#', class: "add_text btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_image(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render('tutos/render_form/element_image', f: builder)
    end
    link_to(name, '#', class: "add_image btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_add_reference(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render('tutos/render_form/element_reference', f: builder)
    end
    link_to(name, '#', class: "add_reference btn btn-primary", data: {id: id, fields: fields.gsub("\n", "")})
  end
end
