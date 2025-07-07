#!/bin/bash
cd /root || exit 1
docker compose pull
docker compose up -d