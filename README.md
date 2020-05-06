# Hello in C++

based on oat++

test
1

***** TODO ******

valutare anche template con lib

https://github.com/ipkn/crow (attenzione che deriva da nginx)
https://github.com/uNetworking/uWebSockets
https://github.com/yhirose/cpp-httplib

e poi in java con https://github.com/netty/netty/blob/4.1/example/src/main/java/io/netty/example/http/helloworld/HttpHelloWorldServer.java


## Overview

### Project layout

```bash
|- CMakeLists.txt                        // projects CMakeLists.txt
|- src/
|    |
|    |- controller/                      // Folder containing MyController where all endpoints are declared
|    |- dto/                             // DTOs are declared here
|    |- AppComponent.hpp                 // Service config
|    |- App.cpp                          // main() is here
|
|- test/                                 // test folder
|- utility/install-oatpp-modules.sh      // utility script to install required oatpp-modules.  
```

---

### Build and Run

#### Using CMake

**Requires** 

- `oatpp` module installed. You may run `utility/install-oatpp-modules.sh` 
script to install required oatpp modules.

```bash
$ mkdir build && cd build
$ cmake ..
$ make 
$ ./my-project-exe  # - run application.

```

#### In Docker

```bash
$ docker build -t oatpp-starter .
$ docker run -p 8000:8000 -t oatpp-starter
```

```sequence
Alice->Bob: Authentication Request
note right of Bob: Bob thinks about it
Bob->Alice: Authentication Response
```