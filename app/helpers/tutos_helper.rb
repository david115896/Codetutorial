module TutosHelper
    def get_style_text
        return Style.find_by(name: "Text")
    end
end
