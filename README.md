# Bazel Build for [open-source-parsers/jsoncpp](https://github.com/open-source-parsers/jsoncpp)

[![Build Status](https://travis-ci.org/cschuet/jsoncpp.svg?branch=master)](https://travis-ci.org/cschuet/jsoncpp)

Add to your WORKSPACE

```
http_archive(
    name = "com_github_cschuet_jsoncpp",
    strip_prefix = "jsoncpp-e1c68e5ceed5ed7b103aee853d1aac8900e06cce",
    urls = [
        "https://github.com/cschuet/jsoncpp/archive/e1c68e5ceed5ed7b103aee853d1aac8900e06cce.tar.gz",
    ],
)

load("@com_github_cschuet_snappy//:jsoncpp/repositories.bzl", "repositories")

repositories()
```

Compile with
```
bazel build @com_github_open_source_parsers_jsoncpp//...
```

