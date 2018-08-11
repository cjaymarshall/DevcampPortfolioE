class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = CjmViewTool::Renderer.copyright 'C. Jay Marshall', 'All rights reserved'
  end
end

module CjmViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; 2006-#{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end


