#!/bin/bash

# setup.sh - Initialize distributed message queue project structure

set -e  # Exit on error

PROJECT_NAME="distributed-mq"
GITHUB_USERNAME="your-github-username"  # Change this to your actual GitHub username

echo "Creating distributed message queue project: $PROJECT_NAME"

# Create project root
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME

# Initialize Go module
echo "Initializing Go module..."
go mod init github.com/$GITHUB_USERNAME/$PROJECT_NAME

# Create directory structure
echo "Creating directory structure..."

# Command directories
mkdir -p cmd/broker
mkdir -p cmd/producer
mkdir -p cmd/consumer

# Package directories
mkdir -p pkg/broker
mkdir -p pkg/storage
mkdir -p pkg/client
mkdir -p pkg/protocol
mkdir -p pkg/coordinator

# Internal directories
mkdir -p internal/config
mkdir -p internal/util

# API directory
mkdir -p api/proto

# Deployment directories
mkdir -p deployments

# Scripts directory
mkdir -p scripts

# Tests directories
mkdir -p tests/integration
mkdir -p tests/unit

# Documentation directory
mkdir -p docs

# Data directory (for local development - will be gitignored)
mkdir -p data

# Create placeholder main.go files
echo "Creating placeholder files..."

# cmd/broker/main.go
cat > cmd/broker/main.go << 'EOF'
package main

import (
	"fmt"
	"log"
)

func main() {
	fmt.Println("Distributed MQ Broker starting...")
	log.Println("Broker not yet implemented")
}
EOF

# cmd/producer/main.go
cat > cmd/producer/main.go << 'EOF'
package main

import (
	"fmt"
	"log"
)

func main() {
	fmt.Println("Producer example...")
	log.Println("Producer not yet implemented")
}
EOF

# cmd/consumer/main.go
cat > cmd/consumer/main.go << 'EOF'
package main

import (
	"fmt"
	"log"
)

func main() {
	fmt.Println("Consumer example...")
	log.Println("Consumer not yet implemented")
}
EOF

# pkg/storage/log.go - This is where you'll start building
cat > pkg/storage/log.go << 'EOF'
package storage

import (
	"os"
)

// Log represents an append-only log
type Log struct {
	file   *os.File
	offset uint64
}

// NewLog creates a new append-only log
func NewLog(path string) (*Log, error) {
	// TODO: Implement log initialization
	return nil, nil
}

// Append adds a message to the log
func (l *Log) Append(data []byte) (uint64, error) {
	// TODO: Implement append
	return 0, nil
}

// Read retrieves a message at a given offset
func (l *Log) Read(offset uint64) ([]byte, error) {
	// TODO: Implement read
	return nil, nil
}

// Close closes the log
func (l *Log) Close() error {
	// TODO: Implement close
	return nil
}
EOF

# pkg/storage/log_test.go
cat > pkg/storage/log_test.go << 'EOF'
package storage

import (
	"testing"
)

func TestLog(t *testing.T) {
	// TODO: Add tests
	t.Skip("Not implemented yet")
}
EOF
