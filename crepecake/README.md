# Jib

## What is Jib?

Jib is tool for building container images for your Java applications.

## Goals

* Fast - Your Java application gets broken down into multiple layers, separating dependencies from classes. Deploy your changes faster - don’t wait for Docker to rebuild your entire Java application.
* Reproducible - Rebuilding your container image with the same contents always generates the same image. Never trigger an unnecessary update again.
* Native - Reduce your CLI dependencies. Build your Docker image from within Maven or Gradle and push to any registry of your choice. No more writing Dockerfiles and calling docker build/push.

## Quickstart

### Setup

In your Maven Java project, add the plugin to your `pom.xml`:

```
<plugin>
    <groupId>com.google.com.tools</groupId>
    <artifactId>jib-maven-plugin</artifactId>
    <version>0.0.1</version>
    <configuration>
        <registry></registry>
        <repository></repository>
        <credentialHelperName></credentialHelperName>
    </configuration>
</plugin>
```

### Configuration

Configure the plugin by changing `registry`, `repository`, and `credentialHelperName` accordingly. **TODO: ELABORATE**

### Build Your Image

Build your container image with:

```
$ mvn package jib:build
```

Subsequent builds would usually be much faster than the initial build.

## Extended Usage

## How Jib Works

Whereas traditionally a Java application is built as a single image layer with the application JAR, the build strategy here breaks the Java application into multiple layers for more granular incremental builds. When you change your code, only your changes are rebuilt, not your entire application. These layers, by default, are layered on top of a [distroless](https://github.com/GoogleCloudPlatform/distroless) base image. 

See also [rules_docker](https://github.com/bazelbuild/rules_docker) for a similar existing container image build tool for the []Bazel build system]9https://github.com/bazelbuild/bazel).

## Frequently Asked Questions (FAQ)

### But, I'm not a Java developer.

[bazelbuild/rules_docker](https://github.com/bazelbuild/rules_docker)

## Contact