# Setting up a Local Database

This is intended to be a simple guide for DevOps beginners to explore `docker-compose` or for `MySQL` beginners to easily run their own local database (with admin GUI).

## Steps

1. Run all services in daemonized mode (background): `docker-compose up -d`
2. Tail all the container logs: `docker-compose logs -f`
3. Wait for `[Note] mysqld: ready for connections.` to appear in the logs.
4. Open a new terminal and enter:
`mysql -h 127.0.0.1 -P 3306 -u my_user -p`
5. Type the password: `mypassword` and hit enter to confirm the database server is running and reachable.
6. Check out the admin GUI by browsing to [http://127.0.0.1:8080/](http://127.0.0.1:8080/).
7. Use these settings:
  * Alternatively, use [this link](http://127.0.0.1:8080/?server=127.0.0.1&username=root&db=my_db) as a shortcut to input the settings and you'll just need the password.

  ```
  System: `MySQL`
  Server: `db`
  Username: `root`
  Password: `rootpass`
  Database: `my_db`
  ```

### Configuration explanation

The reason we use `db` as the server (instead of `127.0.0.1`) is because `docker-compose` provides `DNS` for services and we specified that the `db` service should have hostname `db` in [docker-compose.yml](docker-compose.yml).


  ```yaml
  services:
    db:
      hostname: db
  ```

   This means that any other containerized service in the `docker-compose` file will be able to reach the database server at `db:3306`. `localhost:3306` or `127.0.0.1:3306` will not work from inside any container but the one running the SQL server.
