@echo off

docker run --rm --privileged multiarch/qemu-user-static:register

docker build --platform linux/arm64 -t kanap0nta/kaniko-executor .
docker tag kanap0nta/kaniko-executor:latest kanap0nta/kaniko-executor:arm64
docker tag kanap0nta/kaniko-executor:latest kanap0nta/kaniko-executor:arm64-v1.3.0
docker tag kanap0nta/kaniko-executor:latest kanap0nta/kaniko-executor:arm64-v1.3.0-debug
docker tag kanap0nta/kaniko-executor:latest kanap0nta/kaniko-executor:arm64-debug
docker push kanap0nta/kaniko-executor:latest
docker push kanap0nta/kaniko-executor:arm64
docker push kanap0nta/kaniko-executor:arm64-v1.3.0
docker push kanap0nta/kaniko-executor:arm64-v1.3.0-debug
docker push kanap0nta/kaniko-executor:arm64-debug

echo Complete!

pause
