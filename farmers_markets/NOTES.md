1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects.
8. program


- A command line interface that provides the user with the top Denver Farmers Markets

The user will run the code with farmers_markets and be provided a list of markets 

- The user will be asked which market they would like more information about? input either number or exit 
- If they select a market they will be given:
    - Name of the market 
    - When the market takes place 
    - A description of the market 
    - And possibly a link to the markets website 
    
- Then the user can decide to go back to the main menu and select a different market 
- Or they can exit the application which will tell the user:
    - "Enjoy the farmers market!" or something along these lines... 
    
What makes up a market?

  - A market has a name (market.name)
  - A market has a location (market.location)
  - A market has a time being held (market.time)
  - A market has a description (market.description)
  - A market has a potential website (market.url)

