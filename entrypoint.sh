#!/bin/bash
# Start the XFCE desktop environment
startxfce4 &
# Keep the container running
exec "$@"
