require 'pry'

class Gossip
attr_reader :author, :content

      def initialize(author, content)
          @content = content
          @author = author
      end

      def save
        my_gossip = Gossip.new(author, content)
          CSV.open("db/gossip.csv", "a") do |csv|
            csv << [@author, @content]
          end
      end

      def self.all
        all_gossips = []
        CSV.foreach("db/gossip.csv") do |content|
          all_gossips << [@content]
        end
        #CSV.each("db/gossip.csv") do |ligne|
        #gossip_provisoire = Gossip.new(@content)
        #all_gossips << gossip_provisoire
        return all_gossips
    end
end
