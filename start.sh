#!/bin/sh
# استخدام البورت الذي تمنحه منصة Koyeb تلقائياً
sed -i "s/\"port\": 443/\"port\": ${PORT:-8080}/g" /root/config.json
exec /root/xray run -config /root/config.json
