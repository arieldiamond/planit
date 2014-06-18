module DateTimeHelper

  def to_short_date(datetime_object)
    datetime_object.strftime("%m/%d/%Y")
  end

  def to_date_and_time(datetime_object)
    datetime_object.strftime("%l:%M%P %m/%d/%Y")
  end

end
