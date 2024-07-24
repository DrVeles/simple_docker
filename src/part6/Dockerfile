FROM nginx

RUN chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    rm -rf /var/lib/apt/lists
COPY ./part6.conf /etc/nginx/nginx.conf
COPY ./nginx_run.sh /nginx_run.sh
USER nginx

ENTRYPOINT ["sh", "/nginx_run.sh"]
