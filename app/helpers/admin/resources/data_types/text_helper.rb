module Admin::Resources::DataTypes::TextHelper

  def table_text_field(attribute, item)
    if (data = item.send(attribute)).present?
      truncate(data)
    else
      mdash
    end
  end
end
