# FROM nginx:1.13.3-alpine
# COPY /nginx/default.conf /etc/nginx/conf.d/
# RUN rm -rf /usr/share/nginx/html/*
# COPY dist/shop /usr/share/nginx/html

# FROM nginx:1.13.3-alpine
# COPY nginx/default.conf /etc/nginx/conf.d/
# RUN rm -rf /usr/share/nginx/html/*
# COPY dist/shop/ /usr/share/nginx/html/

FROM public.ecr.aws/docker/library/httpd:2.4
RUN rm -rf /usr/local/apache2/htdocs/*
COPY dist/shop/ /usr/local/apache2/htdocs/
