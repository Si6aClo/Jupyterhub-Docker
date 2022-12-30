c = get_config()  #noqa
# Configuration file for jupyterhub.
c.JupyterHub.authenticator_class = 'dummyauthenticator.DummyAuthenticator'

c.DummyAuthenticator.admin_users = {"admin"}
c.DummyAuthenticator.password = "admin"
c.DummyAuthenticator.allowed_users = {"admin"}
c.DummyAuthenticator.username_map = {"admin": "admin"}