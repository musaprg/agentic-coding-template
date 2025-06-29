#!/usr/bin/env python3
"""Tests for hello.py module."""

import pytest
from hello import greet


def test_greet_default():
    """Test greet function with default parameter."""
    result = greet()
    assert result == "Hello, World!"


def test_greet_with_name():
    """Test greet function with custom name."""
    result = greet("Agent")
    assert result == "Hello, Agent!"


def test_greet_empty_string():
    """Test greet function with empty string."""
    result = greet("")
    assert result == "Hello, !"


if __name__ == "__main__":
    pytest.main([__file__])
