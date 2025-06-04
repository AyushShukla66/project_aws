# Start from the official nginx image
FROM nginx

# Remove default nginx page (optional but recommended)
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom static website content into nginx web root
#COPY news.html /usr/share/nginx/html/
#COPY default.conf /etc/nginx/conf.d/default.conf
#COPY * /usr/share/nginx/html/index.html
#COPY * /usr/share/nginx/html/style.css
COPY * /usr/share/nginx/html/

# Expose port 80 (default nginx port)
EXPOSE 30080

# Start nginx (default CMD is already defined in nginx)
