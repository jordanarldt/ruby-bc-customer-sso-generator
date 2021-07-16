require "securerandom"
require "jwt"

clientId = "{{CLIENT_ID}}" # API Token's client ID
clientSecret = "{{CLIENT_SECRET}}" # API Token's client secret
customerId = {{CUSTOMER_ID}} # The ID of the customer that you are logging in, must be an integer
storeHash = "{{STORE_HASH}}" # Your store hash
storeUrl = "{{STORE_DOMAIN}}" # Your root domain name for your store
redirectTo = "/" # Where to redirect the customer after login. This path is relative and cannot be an absolute URL
channelId = 1 # Leave this as 1 if you are making the token for the default BC storefront

payload = {
  iss: clientId,
  iat: Time.now.to_i,
  jti: SecureRandom.uuid,
  operation: "customer_login",
  store_hash: storeHash,
  customer_id: customerId,
  redirect_to: redirectTo,
  channel_id: channelId
}

token = JWT.encode(payload, clientSecret, "HS256", { typ: "JWT" })
loginUrl = "#{storeUrl}/login/token/#{token}"

puts loginUrl
