Deface::Override.new(:virtual_path  => "shared/_nav_bar",
            :replace => "li#search-bar[data-hook]",
            :text => "<li id=\"search-bar\"></li>",
            :name          => "account_nav")

Deface::Override.new(:virtual_path  => "shared/_store_menu",
            :remove => "#home-link[data-hook]",
            :name          => "account_nav_home")
