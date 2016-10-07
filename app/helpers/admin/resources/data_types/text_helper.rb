module Admin::Resources::DataTypes::TextHelper

  def table_text_field(attribute, item)
    if (field = item.send(attribute)).present?
      truncate(field)
    else
      mdash
    end
  end
end
