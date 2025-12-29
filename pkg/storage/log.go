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
