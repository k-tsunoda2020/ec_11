I18n.available_locales = [:en, :ja]
I18n.default_locale = :ja

I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]