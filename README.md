# zookeeper

1.Create a new project.

oc new-project dzookeeper

2.Create a new docker build.

oc new-build https://github.com/shrishs/zookeeper.git --context-dir=image --name=zookeeperprod --strategy=docker

3.Check if new Imagestream is created.

oc get is

---
NAME            DOCKER REPO                                                 TAGS      UPDATED
zookeeper       docker-registry.default.svc:5000/dzookeeper/zookeeper       3.4       27 hours ago
zookeeperprod   docker-registry.default.svc:5000/dzookeeper/zookeeperprod   latest    About an hour ago
---


4.Start the newly created build(first time it is automatically started).

oc start-build zookeeperprod --wait --follow 


5.Create the statefulset

oc create -f docker_zookeeper_mini.yaml

6.Check if all the pod started properly.

---
oc get pods |grep zk
zk-0                    1/1       Running     0          1h
zk-1                    1/1       Running     0          1h
zk-2                    1/1       Running     0          1h
---

7.Test with some sample data.

oc rsh zk-0

zkCli.sh

[zk: localhost:2181(CONNECTED) 1] create /hello word

oc rsh zk-1

[zk: localhost:2181(CONNECTED) 1] get /hello

word

