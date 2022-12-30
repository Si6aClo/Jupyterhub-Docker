FROM jupyterhub/jupyterhub

RUN apt update
RUN apt-get install -y python3 python3-pip git
RUN python3 -m pip install jupyterhub notebook jupyterlab

WORKDIR /home
RUN python3 -m pip install jupyterhub-dummyauthenticator

RUN useradd -m -d /home/admin -s /bin/bash admin
COPY jupyterhub_config.py .

EXPOSE 8000

CMD [ "jupyterhub", "-f", "jupyterhub_config.py" ]
