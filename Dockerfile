FROM n8nio/n8n:2.6.3

USER root

# Install docx-templates so it can be required in Code node
RUN npm install -g docx-templates@latest && npm cache clean --force

USER node
