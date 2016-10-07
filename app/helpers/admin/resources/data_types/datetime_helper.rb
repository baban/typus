module Admin::Resources::DataTypes::DatetimeHelper

  def table_datetime_field(attribute, item)
    display_datetime(item, attribute)
  end

  alias_method :table_date_field, :table_datetime_field
  alias_method :table_time_field, :table_datetime_field
  alias_method :table_timestamp_field, :table_datetime_field

  def display_datetime(item, attribute)
    if (field = item.send(attribute)).present?
      I18n.l(item.send(attribute), format: @resource.typus_date_format(attribute))
    else
      mdash
    end
  end

  alias_method :display_date, :display_datetime

end
