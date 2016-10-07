module Admin::Resources::DataTypes::SelectorHelper

  def table_selector_field(attribute, item)
    display_selector(item, attribute)
  end

  def display_selector(item, attribute)
    item.mapping(attribute)
  end

end
