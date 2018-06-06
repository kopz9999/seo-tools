module SeoTools
  class SiteMap
    include Singleton
    
    def process_entry(path)
      xml_str = RestClient.get(path).to_s
      doc = Nokogiri::XML(xml_str)
      nodes = doc.css('loc')
      nodes.each do |node|
        puts node.text
      end
    end
    
    def process_root(path)
      xml_str = RestClient.get(path).to_s
      doc = Nokogiri::XML(xml_str)
      nodes = doc.css('loc')
      nodes.each do |node|
        process_entry node.text
      end
    end
  end
end
