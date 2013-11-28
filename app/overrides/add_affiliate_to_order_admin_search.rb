# Add AFFILIATE ID filter to the order search
Deface::Override.new(
    :virtual_path  => "spree/admin/orders/_filter",
    :name => "add_affiliate_id_to_search_filters",
    :insert_bottom => "[data-hook='admin_orders_index_search_filters_fifth_column']",
    :partial => "spree/admin/orders/add_affiliate_name_to_search_filters",
    :disabled => false,
    :original => '3e1e27e1c731d1766e57e9fa712ffd515dfe0e0d'
)
# Add a AFFILIATE ID column to the search results headers
Deface::Override.new(
    :name => "add_affiliate_id_to_search_results_headers",
    :virtual_path  => "spree/admin/orders/index",
    :insert_before => "[data-hook='admin_orders_index_header_actions']",
    :partial => "spree/admin/orders/search_results_affiliate_header",
    :disabled => false,
    :original => '3b85209ae015b0148ee10f7bd564a7b086b273cf'
)
# Add AFFILIATE ID link to the search results rows
Deface::Override.new(
    :name => "add_affiliate_id_to_search_results_rows",
    :virtual_path  => "spree/admin/orders/index",
    :insert_before => "[data-hook='admin_orders_index_row_actions']",
    :partial => "spree/admin/orders/search_results_affiliate_row",
    :disabled => false,
    :original => '227ab33cc857f236f0dd609921edbd3ffa27842f'
)
# Add AFFILIATE column width to the search results colgroup
Deface::Override.new(
    :name => "add_affiliate_to_search_results_columns",
    :virtual_path  => "spree/admin/orders/index",
    :insert_before => "[data-hook='admin_orders_index_actions_column']",
    :text => "<col style='width: 80px;' />",
    :disabled => false,
    :original => '84bbb65b4450659c8e40b4b6353c368751443997'
)
