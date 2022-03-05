# boozy

### Installation

1. Install go 1.17 
```brew install go```

2. Install sqitch
```
brew install sqitch
sqitch config --user user.email 'jasonganub@gmail.com'
sqitch config --user user.name 'Jason Ganub'
```

3. Install Postgres.app 14
```https://postgresapp.com/downloads.html```

4. Initialize Postgres 14 and double tap on the Postgres
5. Create the database
```create database boozy;```

6. Run database migrations
```sqitch deploy db:pg:boozy```

7. Run the server
```go run server.go```