
# elavon doesn't support separate auth and capture actions, so there can be no final confirmation page.  This setting makes sure the system captures funds all at once.
if Preference.table_exists?
  Spree::Config.set(:auto_capture => true)
end
