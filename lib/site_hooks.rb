  class SiteHooks < Spree::ThemeSupport::HookListener
    #replace :sidebar, 'shared/gk_nav'
    remove :sidebar
    insert_before :homepage_products, 'shared/homepage_rotator'

  end
