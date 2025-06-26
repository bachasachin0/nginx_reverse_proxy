#!/bin/bash

BASE_URL="http://localhost:8080"

echo "🔍 Testing Service 1..."

echo -n "➡️  /service1/ping: "
curl -s "$BASE_URL/service1/ping" && echo ""

echo -n "➡️  /service1/hello: "
curl -s "$BASE_URL/service1/hello" && echo ""

echo ""
echo "🔍 Testing Service 2..."

echo -n "➡️  /service2/ping: "
curl -s "$BASE_URL/service2/ping" && echo ""

echo -n "➡️  /service2/hello: "
curl -s "$BASE_URL/service2/hello" && echo ""

echo ""
echo "✅ All tests completed."
