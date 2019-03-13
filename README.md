# kubernetes Aggregated API Server proof of concept

## Try it Out (requires running Minishift or previously configured Kubernetes environment):

**1. Execute the build script.

./build-poc-artifacts.sh

**2. Deploy the artifacts:

./deploy-poc-artifacts.sh

**3. Run kubectl proxy

kubectl proxy --port 8080 &

**4. Execute request (substitute "source" value with any reachable git repo location)

curl --header "Content-Type: application/json" --request POST --data '{"source":"https://github.com/sbryzak/kubepoc"}' http://localhost:8080/apis/kubepoc.bryzak.com/v1/namespaces/default/detect

**5. Cleanup deployed artifacts

./delete-poc-artifacts.sh