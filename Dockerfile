FROM node:alpine

ARG KEY
ARG SECRET
ARG BETA=false

# Check Required Arguments
RUN if [[ -z "${KEY}" || -z "${SECRET}" ]]; then echo "******* You must provide a KEY and SECRET build argument. *******" && exit 1; fi

# Install Nexmo CLI
RUN if [ "${BETA}" = "false" ]; then npm install -g nexmo-cli; else npm install -g nexmo-cli@beta; fi

USER node

RUN nexmo setup ${KEY} ${SECRET}

ENTRYPOINT ["nexmo"]
