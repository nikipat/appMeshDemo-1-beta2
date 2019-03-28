echo "Run curl http://metal.dj-app.svc.cluster.local:9080;echo"

thepod=$(kubectl get pods -l app=dj -o json -nprod | jq .items[0].metadata.name | sed 's/"//g')
#kubectl exec $thepod -it bash -ndj-app
kubectl exec $thepod -nprod -t -- bash -c "while [ 1 ]; do curl -s http://jazz.prod.svc.cluster.local:9080;echo; done"

