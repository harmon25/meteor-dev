# meteor-dev
Meteor Development Docker Image
A container for Meteor development

# Run Mongo in seperate container
```bash
docker run --name meteor-mongo -v ~/mongodata:/data/db -d mongo:3.0
```
# Run meteor-dev container
- Create volume of Meteor application directory from host to /opt/app in container
- Meteor will reload with changes made to your app from the host
```bash
docker run --name meteor-app \
 -it \
 -v ~/dev/meteor-app:/opt/app \
 --link meteor-mongo:mongodb \
 -e MONGO_URL=mongodb://mongodb:27017/meteor-app \
 harmon25/meteor-dev
```

- Thanks [meteord](https://github.com/meteorhacks/meteord)
