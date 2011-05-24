if Preference.table_exists?
  Spree::Config.set(:auto_capture => true)
end
