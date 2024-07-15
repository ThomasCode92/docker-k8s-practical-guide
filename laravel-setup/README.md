# A More Complex Setup - Laravel & PHP Dockerized Project

**Practice: A Laravel & PHP Setup**<br />
Images, Container, Compose - All in Action

## Target Setup

![target application](./docs/target.excalidraw.png)

**Create the Laravel Setup**<br />
Run the following commands to start the necessary containers for building the target application.

1. **Create and Start a Laravel Project**<br />

   ```bash
      # Create a Laravel Project
      docker compose run --rm composer create-project --prefer-dist laravel/laravel .

      # Change file permissions (of the created src folder)
      sudo chmod -R o+w src/storage src/bootstrap/cache

      # Start the Application
      docker compose up -d server
   ```

2. **Use MySQL Database**<br />
   To switch from the default _SQLite_ database to a _MySQL_ database in a Laravel project, follow these steps.<br />
   First, open theOpen the `src/.env` file and update the database connection variables as follows:
   ```bash
      DB_CONNECTION=mysql
      DB_HOST=mysql
      DB_PORT=3306
      DB_DATABASE=homestead
      DB_USERNAME=homestead
      DB_PASSWORD=secret
      DB_COLLATION=utf8mb4_unicode_ci
   ```
   Next, use the following Docker Compose commands to run the Laravel migrations and cache the views:
   ```bash
      docker compose run --rm artisan migrate
      docker compose run --rm artisan view:cache
   ```
