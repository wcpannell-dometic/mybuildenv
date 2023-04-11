FROM git.cdielectronics.com:4567/tooling/buildenv:v0.4.0
COPY ./setup.sh /setup.sh
RUN /setup.sh
RUN rm /setup.sh
CMD fish
