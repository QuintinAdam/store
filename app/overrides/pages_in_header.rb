Deface::Override.new(virtual_path: "spree/shared/_main_nav_bar",
                     name: "pages_in_header",
                     insert_bottom: "#main-nav-bar > ul:first-child",
                     partial: "spree/static_content/static_content_header",
                     disabled: false)

Deface::Override.new(virtual_path: "spree/shared/_header",
                     name: "add phone to header",
                     insert_after: 'figure#logo',
                     text:'
                     <div class="header_phone" > 
                      Phone: (407)443-1720
                     </div> 

                     ')
                     
