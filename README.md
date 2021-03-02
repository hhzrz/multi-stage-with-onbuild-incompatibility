## Docker multi-stage build with ONBUILD directive in dockerfile behaves differently between macOS and windows.


### It's normal on macOS, but will result in error on Windows.
### Steps to reproduce the error.
1. Build the base images in `project-base`:
   ```shell
   cd project-base
   docker build -t project-base:package -f package.Dockerfile .
   docker build -t project-base:runner  -f runner.Dockerfile .
   ```
1. Build other specific project images in `project-x`:
   ```shell
   cd project-x
   // the following command will success on macOS, but fail on windows10.
   docker build -t project-x:latest .
   ```
1. So we can only run the container on macOS: `docker run -d project-x:latest`
