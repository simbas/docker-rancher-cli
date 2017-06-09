Dockerized rancher-cli
------------------

```
docker run -v `pwd`:/rancher -e "RANCHER_URL=" -e "RANCHER_ACCESS_KEY=" -e "RANCHER_SECRET_KEY=" simbas/rancher-cli up
```

Oh and it's Gitlab CI compatible.