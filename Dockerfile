FROM node:boron

# Ironically, upgrading from stock NPM to 5.x does not work; so use Yarn to upgrade it instead
RUN yarn global add npm

RUN apt-get update && apt-get install -y rsync python-setuptools python-dev && rm -rf /var/lib/apt/lists/*

RUN easy_install pip && pip install ansible pywinrm==0.1.1
