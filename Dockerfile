FROM n8nio/n8n:2.6.3

USER root

# Install docx-templates where n8n + task-runner can resolve it
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm i docx-templates@latest --omit=dev && npm cache clean --force

# Make sure Node can resolve modules from both global + n8n local node_modules
ENV NODE_PATH=/usr/local/lib/node_modules:/usr/local/lib/node_modules/n8n/node_modules

USER node
