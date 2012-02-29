Deface::Override.new(:virtual_path  => "home/index",
            #:replace => "div#rotator[data-hook]",
            :insert_before => "[data-hook='homepage_products']",
            :partial   => '../views/shared/homepage_rotator',
            :name         => "homepage_rotator")

