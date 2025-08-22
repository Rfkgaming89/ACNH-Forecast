FROM nginx:stable-alpine

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy app files
COPY . /usr/share/nginx/html

# Fix permissions
RUN chmod -R 755 /usr/share/nginx/html

# Add wasm MIME type via custom config
RUN echo 'types { application/wasm wasm; }' > /etc/nginx/conf.d/wasm.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
