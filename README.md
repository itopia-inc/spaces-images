# Pre-configured images for itopia Spaces

[This set of open-source images](https://github.com/orgs/itopia-inc/packages?repo_name=spaces-images)
provides opinionated software development environments (including IDEs, CLIs, settings, etc.),
which should enable most developers to be productive in itopia Spaces
without requiring customization (by administrators) or personalization (by developers).

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
FROM ghcr.io/itopia-inc/spaces-images/spaces-ubuntu-node:focal-16

# Install your developers' tools

# Configure your developers' default environment
```

## Feedback

Questions? Requests? [Please let us know on GitHub!](https://github.com/itopia-inc/spaces-images/issues)
