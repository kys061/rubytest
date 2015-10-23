games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]

  puts "Games in your vast collection: #{games.count}" unless games.empty?



  search = "Contra"
  games2 = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  search_index = games2.find_index(search)
  if search_index
    puts "Game2 #{search} Found: #{games2[search_index]} at index #{search_index}."
  else
    puts "Game2 #{search} not found."
  end





  search = "Super Mario Bros."
  games3 = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
  matched_games = games3.grep(Regexp.new(search))

  # Found an exact match
      puts "Game3 #{search} found." if matched_games.length > 0 && matched_games.include?(search)



      search = "Contra"
      games4 = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
      search_index = games4.find_index(search)

        search_result = if search_index
       "Game4 #{search} found: #{games4[search_index]} at index #{search_index}."
      else
        "Game4 #{search} not found."
      end
      puts search_result



      def search(games5, search_term)
        search_index = games5.find_index(search_term)
        if search_index
          "Game5 #{search_term} found: #{games5[search_index]} at index #{search_index}."
        else
          "Game5 #{search_term} not found."
        end
      end

      games5 = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
      puts search(games5, "Contra")


      def search_index(games5, search_term)
        games5.find_index(search_term) || "Not Found"
      end

      puts search_index(games5, "Metroid")
