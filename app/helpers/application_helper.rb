module ApplicationHelper
  def language_link
    new_locale = ::Refinery::I18n.frontend_locales.detect{|locale| Globalize.locale.to_s != locale.to_s}
    link_to t(new_locale), refinery.url_for(params.merge(locale: new_locale)), :class => 'btn btn-danger switch-lang'
  end

  def show_contact(contacts)
    contact_list = ''
    contacts.each do |contact|
      if contact[:value].present?
        contact_list << "<div><b>#{contact[:name]}:</b> #{contact[:value]}</div>"
      end
    end
    contact_list.html_safe
  end
end
