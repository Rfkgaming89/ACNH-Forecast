# 🚀 ACNH-Forecast Docker Setup Guide

Welcome to the **ACNH-Forecast Docker Setup Guide**!  
This guide will help you set up and run **ACNH-Forecast**, a weather prediction tool for **Animal Crossing: New Horizons**, using Docker.  
Whether you're using a Synology NAS or a standard Docker setup, this guide has you covered! 🌦️🎮

---

## 🌟 What is ACNH-Forecast?

**ACNH-Forecast** is a tool that helps predict in-game weather patterns for **Animal Crossing: New Horizons**.  
By utilizing your game’s unique seed values, it provides accurate weather forecasts to plan your perfect in-game day.

### Key Features
- Predict in-game weather patterns accurately.
- Easy-to-use interface.
- Designed for Animal Crossing enthusiasts.

### Sources
- MeteoNook source code: [Treeki/MeteoNook](https://github.com/Treeki/MeteoNook)
- Tonky MeteoNook fork: [herpiko/tonky-meteonook](https://github.com/herpiko/tonky-meteonook)

---

## 🛠️ Installation Steps

Follow these steps to install and run **ACNH-Forecast**.

---

### Option 1: Using Docker on Synology NAS

#### Step 1: Install Docker on Synology NAS
1. Open **Package Center** in your Synology DSM web interface.
2. Search for **Container Manager** (this replaces the old Docker package).
3. Click **Install** and wait for the installation to complete.

#### Step 2: Set Up Project Files
1. Open **File Station** on your Synology NAS.
2. Navigate to your **USB drive** or any preferred location.
3. Create a new folder named:
   ```bash
   acnh-docker
   ```
4. Upload the following files into this folder:
   - `Dockerfile`
   - Any other required project files.

#### Step 3: Enable SSH Access
1. Open **Control Panel** on your NAS.
2. Navigate to **Terminal & SNMP** → **Terminal** tab.
3. Enable **SSH service** and click **Apply**.

To access the NAS terminal:
1. Open a terminal (Mac/Linux) or use **PuTTY** (Windows).
2. Connect to your NAS:
   ```bash
   ssh admin@your-nas-ip
   ```
   Replace `your-nas-ip` with the actual IP address of your NAS.
3. Enter your admin credentials when prompted.

#### Step 4: Build the Docker Image
Navigate to the folder where the `Dockerfile` is located:
```bash
cd /volumeUSB1/usbshare/acnh-docker
```
Build the Docker image:
```bash
sudo docker build -t acnh-forecast .
```

#### Step 5: Run the Docker Container
Start the Docker container:
```bash
sudo docker run -d \
  -p 1337:1337 \
  -v /volumeUSB1/usbshare/acnh-docker:/app \
  --name acnh-forecast-app \
  acnh-forecast
```

This command:
- Runs the container in detached mode.
- Maps port `1337` for web access.
- Mounts the shared folder as `/app`.

#### Step 6: Access the Application
Open your browser and go to:
```
http://your-nas-ip:1337
```
Replace `your-nas-ip` with your Synology NAS's IP address.  
You should see the **ACNH-Forecast** interface! 🎉

---

### Option 2: Using Docker on Any System

If you’re not using Synology NAS, you can deploy **ACNH-Forecast** using Docker on any compatible system.

#### Step 1: Install Docker
- **Linux**:  
  Follow the official Docker installation guide for your distribution: [Install Docker on Linux](https://docs.docker.com/engine/install/).
- **Windows or macOS**:  
  Download and install Docker Desktop from [Docker's official website](https://www.docker.com/products/docker-desktop).

#### Step 2: Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/Rfkgaming89/ACNH-Forecast.git
cd ACNH-Forecast
```

#### Step 3: Build the Docker Image
Navigate to the directory containing the `Dockerfile` and build the Docker image:
```bash
docker build -t acnh-forecast .
```

#### Step 4: Run the Docker Container
Run the container and map the necessary ports:
```bash
docker run -d \
  -p 1337:1337 \
  -v $(pwd):/app \
  --name acnh-forecast-app \
  acnh-forecast
```

#### Step 5: Access the Application
Open your web browser and navigate to:
```
http://localhost:1337
```
Or replace `localhost` with your server's IP address if running on a remote machine.  
The **ACNH-Forecast** interface should now be accessible! 🎉

---

## 🔄 Additional Setup

- **Auto-restart the container on boot**:
  ```bash
  docker update --restart unless-stopped acnh-forecast-app
  ```
- **Check container logs**:
  ```bash
  docker logs acnh-forecast-app
  ```
- **Fix file permissions if needed**:
  ```bash
  chmod -R 755 /path/to/acnh-docker
  ```

---

## ❓ FAQ & Troubleshooting

- **Check if the container is running**:
  ```bash
  docker ps
  ```
- **Stop the container**:
  ```bash
  docker stop acnh-forecast-app
  ```
- **Restart the container**:
  ```bash
  docker start acnh-forecast-app
  ```
- **Update the container**:
  1. Stop the current container:
     ```bash
     docker stop acnh-forecast-app
     ```
  2. Rebuild the image and start the container again.

---

## 📜 License

This project follows the licensing terms of the original MeteoNook repositories.  
For more details, refer to: [MeteoNook License](https://github.com/Treeki/MeteoNook/blob/main/LICENSE)

---

## 🙌 Contributions

We welcome contributions to improve this project!  
If you'd like to contribute:
1. Fork the repository.
2. Make your changes in a new branch.
3. Submit a pull request for review.

---

## 🎉 Congratulations!

You’ve successfully set up **ACNH-Forecast** using Docker.  
Enjoy predicting the weather in **Animal Crossing: New Horizons**! 🌤️
