module ApplicationHelper
  def language_link
    new_locale = ::Refinery::I18n.frontend_locales.detect{|locale| Globalize.locale.to_s != locale.to_s}
    link_to t(new_locale), refinery.url_for(params.merge(locale: new_locale)), :class => 'btn btn-danger switch-lang'
  end
end
