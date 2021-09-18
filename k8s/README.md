# Kubernetes

## Report

When configuring deployment and service manually, the output of `kubectl get pods,svc` is:

```
NAME                                     READY   STATUS    RESTARTS   AGE
pod/devops-app-python-7997b76499-n4mcx   1/1     Running   0          6m32s

NAME                        TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
service/devops-app-python   LoadBalancer   10.106.104.23   <pending>     5000:32163/TCP   3m57s
service/kubernetes          ClusterIP      10.96.0.1       <none>        443/TCP          7m55s
```

When deploying using manifest files (3 replicas are specified), the output of `kubectl get pods,svc` is:

```
NAME                                     READY   STATUS    RESTARTS   AGE
pod/devops-app-python-5879c858fc-nrpkb   1/1     Running   0          7m51s
pod/devops-app-python-5879c858fc-pllvz   1/1     Running   0          7m51s
pod/devops-app-python-5879c858fc-sx7hw   1/1     Running   0          7m51s

NAME                        TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
service/devops-app-python   LoadBalancer   10.108.108.112   <pending>     5000:32228/TCP   3m3s
service/kubernetes          ClusterIP      10.96.0.1        <none>        443/TCP          20m
```