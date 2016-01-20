# docker-opencv-java

OpenCV for Java

This docker image generates all the OpenCV Java class files contained in a JAR file as well as the native dynamic library for Java OpenCV. This is a self-contained library that works with JNI and is required to run a Java OpenCV application.

## Usage

```sh
$ docker run --rm -it -v $(pwd):/gen joshuamarquez/opencv-java
```

## Copy generated files from container to host

```sh
$ cp /opencv-java-bin/* .
```
