load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _maybe(repo_rule, name, **kwargs):
    if name not in native.existing_rules():
        repo_rule(name = name, **kwargs)

def repositories():
    _maybe(
        http_archive,
        name = "com_github_open_source_parsers_jsoncpp",
	build_file = "@com_github_cschuet_jsoncpp//bazel/third_party/jsoncpp:jsoncpp.BUILD",
	strip_prefix = "jsoncpp-1.8.4",
        urls = [
            "https://github.com/open-source-parsers/jsoncpp/archive/1.8.4.tar.gz", 
        ],
)
