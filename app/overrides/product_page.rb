Deface::Override.new(:virtual_path  => "products/_cart_form",
            :insert_bottom=> "[data-hook='inside_product_cart_form']",
            :text         => "<br/><br/><strong>PLEASE NOTE:</strong> We can only ship to the U.S.<br/>",
            :name         => "shipping_message_add_cart")
Deface::Override.new(:virtual_path  => "products/_cart_form",
            :remove => "div#product-variants h2",
            :text         => "<strong>Formats:</strong>",
            :name         => "variant_label")
Deface::Override.new(:virtual_path  => "products/_cart_form",
            :remove => "dl#product-price dt",
            :name         => "price_label")
Deface::Override.new(:virtual_path  => "products/show",
            :insert_before => "div#product-description",
            :partial      =>  "shared/social",
            :name         => "twitterbook")
