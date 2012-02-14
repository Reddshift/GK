Deface::Override.new(:virtual_path  => "layouts/spree_application",
            :replace => "div#rotator[data-hook]",
            :partial   => '../views/shared/homepage_rotator',
            :name         => "homepage_rotator")

