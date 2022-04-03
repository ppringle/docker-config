FROM cassandra:4.0

COPY ./docker/init-scripts/entrypoint-wrapper.sh ./entrypoint-wrapper.sh
RUN chmod +x ./entrypoint-wrapper.sh
ENTRYPOINT ["/entrypoint-wrapper.sh"]
CMD ["cassandra", "-f"]