# Keycloak Configuration

By default, Keycloak will run on your port 8080.

You might access its configurations through the ```Administration Console``` using the credentials:

```
login: admin
pass: admin
```

From the "tutorial" below you will be able to generate tokens using a request as the one below (that will show you what you got to do to add new "resource_access" data and "actor_id" on token):
```
curl --location --request POST 'localhost:8080/auth/realms/flowbuild/protocol/openid-connect/token' \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    --data-urlencode 'client_id=flowbuild-api' \
    --data-urlencode 'username=imagure' \
    --data-urlencode 'grant_type=password' \
    --data-urlencode 'password=1234' \
    --data-urlencode 'client_secret=ekBKvuWJT8Tz6eUtDeXbOiE3TOhRfAcj'
```

## Tutorial/Summary:

* Create new realm (eg. "flowbuild")

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/1.realm_creation.png)


* Create new client for that realm (eg. "flowbuild-api")

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/2.client_creation.png)


* Configure client to "Service Account" (don't forget to give it a redirect URL an save it)

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/3.client_configuration.png)


* Get client credential (you'll need it to POST for tokens later)

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/4.client_credential.png)


* Create new User (optionally, you might create a Group as well)

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/5.user_password.png)


* On client page, create new roles to be used on tab "Roles" (ex: 'common', 'admin', etc...)

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/6.client_roles.png)


* Assign created roles to the user (or to the Group if you created one)
![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/keycloak-doc/7.roles_assign.png)