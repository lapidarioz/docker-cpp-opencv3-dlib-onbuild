FROM lapidarioz/docker-cpp-opencv3-dlib

WORKDIR /usr/src/app-build

ONBUILD COPY . /usr/src/app

ONBUILD cmake /usr/src/app/
ONBUILD cmake --build /usr/src/app-build --config Release
