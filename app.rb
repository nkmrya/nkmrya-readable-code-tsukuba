require 'JSON'

json = File.open("reseipt-data.json").read
receipts = JSON.parse(json)

receipts.each do |receipt|
	puts receipt
end
