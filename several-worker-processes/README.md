```sh
# Generate env files for each service
$ seq 11 30 | while read p; do sed -e "s/{{SERVER_PORT}}/30$p/g" template.sh > env-$p.sh; done;

# Generate service files for each service
$ seq 11 30 | while read p; do sed -e "s/{{WORKER_NUMBER}}/$p/g" template.service > isuumo-$p.go.service; done;

# Generate the upstream configuration for Nginx
$ seq 11 30 | while read p; do echo "server localhost:30$p;"; done | head -1
```
