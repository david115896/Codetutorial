module StylesHelper

    def get_style_name(style_id)
        return Style.find(style_id).name
    end
end
