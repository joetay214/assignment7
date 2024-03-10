FROM alpine
RUN mkdir -m 777 /structure
USER sync
RUN touch /structure/sync-work 
USER nobody
RUN touch /structure/nobody-work
USER root
RUN adduser -D -u 5000 collin
