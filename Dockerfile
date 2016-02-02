FROM brimstone/golang-musl

RUN apk -U add gcc make musl-dev git cmake python

# libzlib
# libssl
# libssh2
# libcurl

RUN git clone -b v0.23.4 https://github.com/libgit2/libgit2.git \
 && cd libgit2 \
 && mkdir build \
 && cd build \
 && cmake .. -DCMAKE_INSTALL_PREFIX=/usr/ -DBUILD_SHARED_LIBS=off \
 && cmake --build . --target install \
 && cd ../.. \
 && rm -rf libgit2
