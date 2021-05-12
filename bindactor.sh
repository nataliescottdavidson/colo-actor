curl -i -H "X-Auth-Email: ${EMAIL}" -H "X-Auth-Key: ${AUTH_KEY}" "https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_TAG}/workers/scripts/binds-actor" -X PUT -F "metadata=@metadata.json;type=application/json" -F "script=@binds-actor.js;type=application/javascript"

curl -i -H "X-Auth-Email: ${EMAIL}" -H "X-Auth-Key: ${AUTH_KEY}" "https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_TAG}/workers/scripts/binds-actor/subdomain" -X POST -H "Content-type: application/json" --data '{"enabled": true}'