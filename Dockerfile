FROM n8nio/n8n:2.6.3

USER root

RUN npm i -g docx-templates@latest && npm cache clean --force

# IMPORTANT: allow task-runner to resolve global modules
ENV NODE_PATH=/usr/local/lib/node_modules

USER node
