# Start with official nginx image
FROM nginx:latest

# Remove default nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files (index.html, style.css, etc.) to nginx directory
#COPY news.html /usr/share/nginx/html/
#COPY style.css /usr/share/nginx/html/
COPY news.html /usr/share/nginx/html/news.html
COPY style.css /usr/share/nginx/html/style.css



# Expose default nginx port
EXPOSE 80

# Start nginx (default command)
CMD ["nginx", "-g", "daemon off;"]
