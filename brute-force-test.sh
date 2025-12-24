#!/bin/bash
# Brute Force Attack Simulation

SERVER_IP=""44.197.250.166""
FAKE_KEY="/dev/null"

echo "BRUTE FORCE SIMULATION"
echo "Target: $SERVER_IP"
echo "Start: $(date)"

for i in {1..15}; do
    echo "Attempt $i of 15..."
    ssh -i $FAKE_KEY -o StrictHostKeyChecking=no -o ConnectTimeout=5 ubuntu@$SERVER_IP 2>/dev/null
    sleep 2
done
