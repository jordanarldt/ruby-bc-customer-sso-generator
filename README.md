# Customer Login SSO Generator with Ruby
Simple Ruby script to generate a Customer Login SSO URL for a store.

To use this example, clone this repository to your local machine, and fill in the variables accordingly.
These variables need to be replaced depending on the context being used:
* *clientId* - The client ID of your API token being used to generate the JWT
* *clientSecret* - The client secret of your API token being used
* *customerId* - The ID of the customer that you are generating the login for
* *storeHash* - Your store hash
* *storeUrl* - The URL / Root domain of your store
* *redirectTo* - Where you want the customer to be redirected after the login
* *channelId* (optional) - The channel that the JWT is being generated for. Leave this as 1 if you are using the default BC storefront
