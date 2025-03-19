#!/bin/bash
echo "Running tests..."

# Check if unittest is available
if ! command -v python -m unittest &> /dev/null; then
    echo "unittest is not available. Please ensure Python is installed."
    exit 1
fi

# Run unit tests
echo "Running unit tests..."
python -m unittest discover -s tests/unit -p "*.py"

# Check if unit tests passed
if [ $? -eq 0 ]; then
    echo "Unit tests passed!"
else
    echo "Unit tests failed!"
    exit 1
fi

# Run integration tests
echo "Running integration tests..."
python -m unittest discover -s tests/integration -p "*.py"

# Check if integration tests passed
if [ $? -eq 0 ]; then
    echo "Integration tests passed!"
else
    echo "Integration tests failed!"
    exit 1
fi

echo "All tests completed successfully!"

