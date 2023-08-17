# Rails Boilerplate with PostgreSQL and Docker

A boilerplate Rails application configured to run with PostgreSQL inside Docker containers.

## Prerequisites

- Docker and Docker Compose installed on your machine.

## Setup and Installation

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/yourrepositoryname.git
    cd yourrepositoryname
    ```

2. **Build the Docker images**:
    This will build the Docker images for the Rails application and the PostgreSQL database.
    ```bash
    docker-compose build
    ```

3. **Set up the database**:
    This will create and set up the PostgreSQL database.
    ```bash
    docker-compose run web rake db:create db:migrate
    ```

4. **Start the Rails server**:
    This will start the Rails server and the PostgreSQL database inside Docker containers.
    ```bash
    docker-compose up
    ```

Your Rails application should now be running on `http://localhost:3000`.

## Useful Commands

- **Start services**:
    ```bash
    docker-compose up
    ```

- **Stop services**:
    ```bash
    docker-compose down
    ```

- **Restart services**:
    ```bash
    docker-compose restart
    ```

- **View logs**:
    ```bash
    docker-compose logs
    ```

## Customizing the Boilerplate

1. **Gemfile**: Add any additional gems you need for your application.
2. **database.yml**: Adjust the database configurations if needed.
