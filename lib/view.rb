class View

    def create_gossip
      puts "Ecris ce que ton histoire :"
      print "> "
      content_gossip = gets.chomp

      puts "Comment t'appelles-tu ?"
      print "> "
      author_gossip = gets.chomp

      return params = { content: content_gossip, author: author_gossip }
    end

    def index_gossips(gossips)

    end

end
