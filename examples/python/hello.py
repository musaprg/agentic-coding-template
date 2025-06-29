#!/usr/bin/env python3
"""Simple Hello World example for Python."""


def greet(name: str = "World") -> str:
    """Return a greeting message.
    
    Args:
        name: The name to greet. Defaults to "World".
        
    Returns:
        A greeting string.
    """
    return f"Hello, {name}!"


def main() -> None:
    """Main function."""
    print(greet())
    print(greet("Agent"))


if __name__ == "__main__":
    main()
