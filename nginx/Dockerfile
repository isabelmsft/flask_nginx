# Use the nginx image
FROM nginx

COPY ./KeepAliveProbe.aspx /var/www/
RUN chmod -R 755 /var/www/

# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf

# Replace with our own nginx.conf
COPY nginx.conf /etc/nginx/conf.d/
