# -*- encoding : utf-8 -*-
require 'navbar'

module SimplePageCompoents
  module Helper
    def page_navbar(*args)
      NavbarRender.new(self, *args)
    end

    def page_breadcrumb(*args)
      BreadcrumbRender.new(self, *args)
    end
  end

  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'SimplePageLayout.helper' do |app|
        ActionView::Base.send :include, Helper
      end
    end

    class Engine < ::Rails::Engine
    end
  end
end
