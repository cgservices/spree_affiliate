# Add AFFILIATES admin to Configuration Menu
Deface::Override.new(
    :virtual_path  => "spree/admin/shared/_configuration_menu",
    :name          => "affiliates_link",
    :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
    :text          => "<%= configurations_sidebar_menu_item t(:affiliates), admin_affiliates_path %>",
    :disabled      => false,
    :original      => '6c7dcb2f8faad0480d679f75f30168a2dca735ba'
)
