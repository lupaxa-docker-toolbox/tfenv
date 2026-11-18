FROM @@CONTAINER_IMAGE_NAME@@:@@CONTAINER_OS_VERSION_ALT@@

ARG IMAGE_CREATED=unknown
@@LABELS@@LABEL org.opencontainers.image.source='@@GIT_URL@@'
LABEL org.opencontainers.image.documentation='@@GIT_URL@@'

RUN \
@@PACKAGES@@@@INSTALL@@@@CLEANUP@@
ENV TFENV_ROOT=/root/.tfenv
ENV PATH="/root/.tfenv/bin:${PATH}"

WORKDIR /root

ENTRYPOINT ["@@ENTRYPOINT@@"]
