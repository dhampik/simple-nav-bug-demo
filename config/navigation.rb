# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'selected'

  navigation.active_leaf_class = 'active'

  navigation.autogenerate_item_ids = false
  
  navigation.items do |primary|
    primary.item :about, 'about', page_path('about')
    primary.item :customers, 'customers', page_path('customers') do |secondary|
        secondary.item :customers_place_order, 'customers.place_order', page_path('customers/place_order') do |tertiary|
          tertiary.item :customers_place_order_tender, 'customers.place_order.tender', page_path('customers/place_order/tender')
          tertiary.item :customers_place_order_auction, 'customers.place_order.auction', page_path('customers/place_order/auction')
        end
    end

    primary.dom_class = 'menu'

  end
end
