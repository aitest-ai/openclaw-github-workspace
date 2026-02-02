FROM mcr.microsoft.com/devcontainers/javascript-node:22

# Install OpenClaw
RUN curl -fsSL https://openclaw.ai/install.sh | bash -s -- --non-interactive

# Set the working directory
WORKDIR /workspaces/openclaw-github-workspace

# Expose the dashboard port
EXPOSE 18789
