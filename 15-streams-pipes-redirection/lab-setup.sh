#!/bin/bash

# LPIC-1 103.4 Streams, Pipes, and Redirects Lab Setup

LAB_DIR="$HOME/lpic1-labs/streams-pipes-redirection-lab"

echo "Creating lab directory at: $LAB_DIR"

mkdir -p "$LAB_DIR"/sample-data
cd "$LAB_DIR" || exit 1

cat > sample-data/users.csv << EOF
mohammad,linux
sara,ubuntu
ali,fedora
reza,debian
nima,ubuntu
maryam,fedora
EOF

cat > sample-data/app.log << EOF
INFO Application started
INFO User login successful
ERROR Database connection failed
WARNING Disk usage is high
INFO Backup completed
ERROR Failed to send email
INFO Application stopped
EOF

touch output.txt
touch errors.txt

echo "Lab files created successfully."
echo "Go to: $LAB_DIR"
