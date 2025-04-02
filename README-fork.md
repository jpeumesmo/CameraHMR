# To Build

```console
docker build -t camera_hmr_image .
```

# To run
```console
docker container run --gpus all -it camera_hmr_image:latest /bin/bash
```

**Note** You may need to mount a volume with `-v` argument. And use your user with