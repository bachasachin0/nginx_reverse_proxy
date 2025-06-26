FROM nginx:1.25-alpine

# Remove default config and copy our custom config
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf
