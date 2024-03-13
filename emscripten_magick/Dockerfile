FROM emscripten/emsdk:3.1.42
RUN git clone https://github.com/dlemstra/Magick.Native.git /ws && cd /ws && git checkout 8861d8354cad042aa &&\
    cd /ws/build/wasm-x86 && ./install.dependencies.sh && \
    cd /ws/src/ImageMagick && ./checkout.sh wasm ../../../artifacts && \
    cd /ws/src/ImageMagick/libraries && ../../../build/shared/build.Libraries.sh ../../../build/libraries wasm x86 && \
    ../../../build/shared/build.ImageMagick.sh wasm x86 &&\
    cd /ws/src/Magick.Native && ../../build/shared/build.Native.sh wasm x86 && cd / && rm -r /ws

