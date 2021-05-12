// Create script that implements actor namespace
curl -i -H "X-Auth-Email: ${EMAIL}" -H "X-Auth-Key: ${AUTH_KEY}" "https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_TAG}/workers/scripts/actor-script" -X PUT -H "Content-Type: application/javascript" --data "`cat actor.js`"

