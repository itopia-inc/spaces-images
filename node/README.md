# Pre-configured Node.js developer images for itopia Spaces

Each of [these Node.js developer images](https://github.com/orgs/itopia-inc/packages?tab=packages&repo_name=spaces-images&q=node)
provides an opinionated Node.js development environment (IDE, CLIs, settings, etc.)
for a particular combination of Node.js version & operating system version,
which should enable most Node.js developers to be productive in itopia Spaces
without requiring customization (by administrators) or personalization (by developers).

## Node.js versions

We support all versions of Node.js that are
[still maintained](https://nodejs.org/en/about/releases/)
by Node.js developers.

## Design choices

For the authoritative list of all Node.js-related configuration changes,
see your image version's Dockerfile.
However, here are some of the choices we made
about what (and what not) to install/configure

### No nvm

Although we like [nvm](https://github.com/nvm-sh/nvm)
and have used it regularly in the past,
we decided not to install it in these Node.js images
because Spaces inherently solves the same problems that nvm exists to address.
A developer that uses Spaces
will not need to install or activate a Node.js version,
because they can instead easily switch to a different space
with that version of Node.js pre-installed as the only Node.js version.

### Only VS Code

[VS Code](https://code.visualstudio.com/)
is the
[most popular](https://2020.stateofjs.com/en-US/other-tools/#text_editors)
JavaScript editor in the world.
Since VS Code is pre-installed in
[our Spaces base images](https://github.com/orgs/itopia-inc/packages?repo_name=spaces-base-images),
we leave it installed
and don't install any other editors/IDEs for Node.js development.
