module TelLinkRails
  class Railtie < Rails::Railtie
    initializer 'tel_link_rails.view_helpers' do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
