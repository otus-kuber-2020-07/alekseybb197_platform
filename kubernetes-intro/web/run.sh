#!/bin/bash
docker run -d -p 8000:8000 -v $(pwd)/app:/app webapp
