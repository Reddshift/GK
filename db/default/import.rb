require 'fastercsv'

prod_taxonomy = Taxonomy.find_or_create_by_name("Books");
format_option_type = OptionType.find_or_create_by_name_and_presentation("Format","Format")

last_row_id = nil
last_p = nil

FasterCSV.foreach(Rails.root.to_s + "/db/import/osc_export.csv") do |row|
  if row[0] == last_row_id # set up product variant
    v = Variant.create :product => last_p, :price => row[7]
    v.option_values = [OptionValue.find_or_create_by_name_and_presentation_and_option_type_id(row[6], row[6], format_option_type.id)]
    v.save
  else # new product
    p = Product.create :name => row[1], :price => row[4], :description => row[2]
    p.available_on = Time.now
    p.taxons << Taxon.find_or_create_by_name_and_taxonomy_id(row[8], prod_taxonomy.id)
    p.option_types = [format_option_type]
    p.save

    if row[6] != 'NULL'
      v = Variant.create :product => p, :price => row[4]
      v.option_values = [OptionValue.find_or_create_by_name_and_presentation_and_option_type_id(row[6], row[6], format_option_type.id)]
      v.save
    end

  end
  last_row_id = row[0]
  last_p = p.nil? ? last_p : p
end

