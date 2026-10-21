FROM nginx:1.27-alpine

# The site is static: one HTML file plus a logo.
COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets

# nginx fills in ${PORT} at start-up, so platforms that assign a port (Render, Railway, Fly) work.
ENV PORT=80
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80
