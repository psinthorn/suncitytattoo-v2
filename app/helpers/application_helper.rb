module ApplicationHelper
    def copyright_helper name = ''
        F2ViewTool::Renderer.copyright "#{name}", 'All rights reserved'
    end
end
