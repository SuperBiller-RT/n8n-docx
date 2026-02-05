FROM n8nio/n8n:2.6.3

USER root

# Install docx-templates in a separate folder (avoid n8n's pnpm workspace)
WORKDIR /opt/n8n-custom
RUN npm init -y \
  && npm i docx-templates@latest --omit=dev \
  && npm cache clean --force

# Make sure task-runner can resolve it
ENV NODE_PATH=/opt/n8n-custom/node_modules:/usr/local/lib/node_modules

USER node
