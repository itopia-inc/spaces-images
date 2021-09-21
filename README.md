# Pre-configured images for itopia Spaces

[These open-source images](https://github.com/orgs/itopia-inc/packages?repo_name=spaces-images)
are opinionated configurations (IDEs, CLIs, settings, etc.)
that should enable most developers to be productive in itopia Spaces
with zero customization (by administrators) or personalization (by developers).

## Usage

Administrators can deploy these images
by selecting them during the space creation process
(using the itopia Spaces
[Admin Portal](https://spaces.itopia.com),
[API](https://api.spaces.itopia.com),
or [CLI](https://github.com/itopia-inc/spaces-cli)).
<!-- TODO: Add example screenshots/commands -->

Alternatively, administrators can customize these images
by using them as the base image for a custom image.
For example:

<!-- TODO: Write some example RUN instructions -->
```Dockerfile
# syntax=docker/dockerfile:1
FROM ghcr.io/itopia-inc/spaces-images/spaces-ubuntu-node:focal-14

# Install your developers' tools

# Configure your developers' default environment
```
