module ViewHelper

  def format_datetime(datetime, type= :datetime)
    return '' unless datetime

    case type
      when :datetime
        format='%Y年%m月%d日 %H:%M:%S'
      when :date
        format='%Y年%m月%d日'
      when :time
        format='%H:%M:%S'
    end

    datetime.strftime(format)
  end

  def list_tag(collection, prop)
    content_tag(:ul) do
      collection.each do |element|
        concat content_tag(:li, element.attributes[prop])
      end
    end
  end

  def list_tag2(collection, prop)
    list='<ul>'
    collection.each do |element|
      list.concat('<li>')
      list.concat(h(element.attributes[prop]))
      list.concat('</li>')
    end
    raw list.concat('</ul>')
  end
end
