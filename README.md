# ACNH-Forecast

**ACNH-Forecast** is a containerized tool that predicts in-game weather patterns for **Animal Crossing: New Horizons** using your game’s seed values.

---

## Features

- Accurate in-game weather predictions
- Simple web-based interface
- Based on the MeteoNook project and forks

---

## Sources

- [MeteoNook (Treeki)](https://github.com/Treeki/MeteoNook)
- [Tonky MeteoNook fork (herpiko)](https://github.com/herpiko/tonky-meteonook)

---

## Installation

### Docker

#### 1. Install Docker

- **Linux:** [Official Guide](https://docs.docker.com/engine/install/)
- **Windows/macOS:** [Docker Desktop](https://www.docker.com/products/docker-desktop)

#### 2. Clone the repository

```bash
git clone https://github.com/Rfkgaming89/ACNH-Forecast.git
cd ACNH-Forecast
```

#### 3. Build the Docker image

```bash
docker build -t acnh-forecast .
```

#### 4. Run the container

```bash
docker run -d -p 3334:80 -v $(pwd):/app --name acnh-forecast-app acnh-forecast
```

> **Note:** Replace `localhost` with your server’s IP if running remotely.

#### 5. Access the application

- Local: [http://localhost:3334](http://localhost:3334)
- Remote: `http://your-server-ip:3334`

---

### Docker Hub (Prebuilt Image)

If you do not want to build locally, you can pull the prebuilt image:

```bash
docker pull rfkgaming89/acnh-forecast
```

Run with:

```bash
docker run -d -p 3334:80 --name acnh-forecast-app rfkgaming89/acnh-forecast
```

---

### Unraid Installation (Community Applications)

- Open the **Apps** tab in Unraid.
- Search for **ACNH-Forecast**.
- Install the container.

**Default settings:**
- Port: `3334` (mapped to container port `80`)
- AppData Path: `/mnt/user/appdata/acnh-forecast`

Access the app at: `http://[SERVER-IP]:3334`

---

## Container Management

- **Check running containers:**  
  ```bash
  docker ps
  ```
- **Stop container:**  
  ```bash
  docker stop acnh-forecast-app
  ```
- **Restart container:**  
  ```bash
  docker start acnh-forecast-app
  ```
- **View logs:**  
  ```bash
  docker logs acnh-forecast-app
  ```
- **Enable auto-restart on boot:**  
  ```bash
  docker update --restart unless-stopped acnh-forecast-app
  ```

---

## Updating

### Using GitHub Build

1. Stop the container:  
   ```bash
   docker stop acnh-forecast-app
   ```
2. Rebuild the image:  
   ```bash
   docker build -t acnh-forecast .
   ```
3. Restart the container:  
   ```bash
   docker start acnh-forecast-app
   ```

### Using Docker Hub Image

1. Stop and remove the container:  
   ```bash
   docker stop acnh-forecast-app && docker rm acnh-forecast-app
   ```
2. Pull the latest image:  
   ```bash
   docker pull rfkgaming89/acnh-forecast
   ```
3. Re-run with your preferred settings.

---

## License

This project follows the license of the original MeteoNook repositories.  
See [`LICENSE`](https://github.com/Treeki/MeteoNook/blob/main/LICENSE)

---

## Links

- [GitHub Repository](https://github.com/Rfkgaming89/ACNH-Forecast)
- [Docker Hub Image](https://hub.docker.com/r/rfkgaming89/acnh-forecast)
- [Issue Tracker](https://github.com/Rfkgaming89/ACNH-Forecast/issues)
