# Docker Container with Ubuntu GUI

This Docker container provides a graphical user interface (GUI) for Ubuntu. It is configured to run with an X server to display graphical applications.

## Prerequisites

Before running the Docker container, ensure that you have the following installed on your system:

- Docker Engine: [Install Docker](https://docs.docker.com/engine/install/)
- X server: If you're using Linux, X server is typically installed by default. For Windows, you can use Xming or VcXsrv. For macOS, you can use XQuartz.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/TeomanEgeSelcuk/Ubuntu-Container.git
   ```

2. Navigate to the cloned directory:

   ```bash
   cd Ubuntu-Container
   ```

3. Build the Docker image:

   ```bash
   docker build -t ubuntu-gui .
   ```

4. Run the Docker container:

   ```bash
   docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix ubuntu-gui
   ```

   - `--rm`: Automatically remove the container when it exits.
   - `-it`: Interactive mode with a pseudo-TTY.
   - `-e DISPLAY=$DISPLAY`: Pass the DISPLAY environment variable to the container to connect to the X server.
   - `-v /tmp/.X11-unix:/tmp/.X11-unix`: Mount the X11 Unix socket from the host to the container.

5. You should now see the Ubuntu GUI environment running inside the Docker container.

## Notes

- When running the Docker container, ensure that your X server is running on your host machine.
- Depending on your X server configuration and security settings, you may need to allow connections from the Docker container to the X server. This can usually be configured in the X server settings or by running `xhost +` on your host machine (though this is not recommended for production environments).
- This Docker container is intended for development or testing purposes. Use caution when running GUI applications in Docker containers in production environments.

Feel free to customize the instructions and details according to your specific requirements or preferences. Let me know if you need further assistance!
