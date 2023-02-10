# Keycloak Configuration

By default, Keycloak will run on your port 8080.

You might access its configurations through the ```Administration Console``` using the credentials:

```
login: admin
pass: admin
```

Small Summary on what you got to do to add new "resource_access" data and "actor_id" on token:
* Create new realm (eg. "flowbuild")
* Create new client for that real (eg. "flowbuild-api")
* Configure client to "Service Account" (don't forget to give it a redirect URL an save it)
* Get client credential (you'll need it to POST for tokens later)
* Create new User (optionally, you might create a Group as well)
* On client page, create new roles to be used on tab "Roles" (ex: 'common', 'admin', etc...)
* Assign created roles to the user (or to the Group if you created one)