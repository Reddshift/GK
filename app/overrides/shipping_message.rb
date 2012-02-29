Deface::Override.new(:virtual_path  => "orders/edit",
            :insert_bottom=> "div#subtotal[data-hook]",
            :text         => "<br/><strong>PLEASE NOTE:</strong> We can only ship to the U.S.<br/><br/>",
            :name         => "shipping_message")

