# NxMonoRepo

This project serves as a blueprint for Nx monorepo projects, initially integrating a backend service using NestJS, with a PostgreSQL database and a Redis database, each running in their respective containers. The project is structured to facilitate scalability, maintainability, and ease of development.

## Prerequisites

Before you can run this project, ensure you have the following installed on your development machine:

- **Node Version Manager (nvm)**
- **Yarn** (version 1.22.10 or higher)
- **Nx CLI** (version 12.0.0 or higher)

(If using docker you can skip all mentioned above)

- **Docker** (version 20.10 or higher)
- **Docker Compose** (version 1.27.4 or higher)

## Development Setup

Follow these steps to get the project up and running:

1. **Clone the repository**:
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```
2. **Setup environment**
   ```sh
   make up
   ```
   This will build all necessary docker images and run containers, if you have already initialized the containers you can just run
   ```sh
   make start
   ```
   or
   ```sh
   make down
   ```
   to shut them down. Running:
   ```sh
   make clean
   ```
   will remove all related data (images & volumes)
3. **Run services**
   If you managed to get containers running successfully then the backend is running on [localhost:3000](http:localhost:3000/api)

If you are not using docker for setup <mark>keep in mind that you should setup postgres db / redis on your own.<mark>
