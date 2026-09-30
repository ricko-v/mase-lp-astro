#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

echo "Building Astro project..."
npm run build

echo "Deploying to /var/www/mase.ricko.dev..."
sudo mkdir -p /var/www/mase.ricko.dev
sudo cp -r dist/* /var/www/mase.ricko.dev/
sudo chown -R www-data:www-data /var/www/mase.ricko.dev

echo "Reloading Nginx..."
sudo systemctl reload nginx

echo "Deployment to mase.ricko.dev finished successfully!"