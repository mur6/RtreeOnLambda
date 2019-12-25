FROM lambci/lambda:build-python3.7
RUN pip install cmake
ENV SPATIAL_INDEX_VERSION 1.9.3
RUN curl -L https://github.com/libspatialindex/libspatialindex/releases/download/$SPATIAL_INDEX_VERSION/spatialindex-src-$SPATIAL_INDEX_VERSION.tar.gz | tar xz
ENV SPATIAL_INDEX_DIR /var/task/spatialindex-src-$SPATIAL_INDEX_VERSION
RUN mkdir -p $SPATIAL_INDEX_DIR/build && \
    cd $SPATIAL_INDEX_DIR/build && \
    cmake -DCMAKE_INSTALL_PREFIX=/var/task .. && \
    make && \
    make install && \
    rm -rf $SPATIAL_INDEX_DIR /var/task/include
RUN pip install --target /var/task rtree
