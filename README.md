# ACNH-Forecast Docker Setup Guide

**ACNH-Forecast** predicts in-game weather patterns for **Animal Crossing: New Horizons**, using your game’s seed values.

---

## Features

- Accurate in-game weather predictions
- Easy-to-use interface
- Ideal for Animal Crossing enthusiasts

---

## Sources

- [MeteoNook](https://github.com/Treeki/MeteoNook)
- [Tonky MeteoNook fork](https://github.com/herpiko/tonky-meteonook)

---

## Installation

### 1. Install Docker

- **Linux:** [Official guide](https://docs.docker.com/engine/install/)
- **Windows/macOS:** [Docker Desktop](https://www.docker.com/products/docker-desktop)

### 2. Clone the repository

```bash
git clone https://github.com/Rfkgaming89/ACNH-Forecast.git
cd ACNH-Forecast
```

### 3. Build the Docker image

```bash
docker build -t acnh-forecast .
```

### 4. Run the container

```bash
docker run -d -p 3334:80 -v $(pwd):/app --name acnh-forecast-app acnh-forecast
```

> **Note:** Replace `localhost` with your server's IP if running remotely.

### 5. Access the application

Open your browser and go to: [http://localhost:3334](http://localhost:3334)  
If running on a remote server, use your server's IP: `http://your-server-ip:3334`

---

## Management Commands

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
- **Auto-restart on boot:**  
  ```bash
  docker update --restart unless-stopped acnh-forecast-app
  ```

---

## Updating

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

---

## License

This project follows the licensing terms of the original MeteoNook repositories:  
See [`LICENSE`](https://github.com/Treeki/MeteoNook/blob/main/LICENSE)

---

Enjoy predicting the weather in Animal Crossing: New Horizons!
