# gazelle:repository_macro load.bzl%go_repositories
# gazelle:repo bazel_gazelle

workspace(name = "com_github_excavador_copy")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "fb6061a525d448954d73ae3f1759e3bc6d1a917894f7079e41481564d59bb3c9",
    strip_prefix = "bazel-skylib-6741f733227dc68137512161a5ce6fcf283e3f58",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/6741f733227dc68137512161a5ce6fcf283e3f58.zip",
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "8a34492b226462b1412880e3dc529422122068eaa2af62dc4e63c1e4c6b26b66",
    strip_prefix = "rules_go-3f29dcb26c9e22ae513321ec9096e776c353ebce",
    url = "https://github.com/bazelbuild/rules_go/archive/3f29dcb26c9e22ae513321ec9096e776c353ebce.zip",
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "c5faf839dd1da0065ed7d44ac248b01ab5ffcd0db46e7193439906df68867c39",
    strip_prefix = "bazel-gazelle-38bd65ead186af23549480d6189b89c7c53c023e",
    url = "https://github.com/bazelbuild/bazel-gazelle/archive/38bd65ead186af23549480d6189b89c7c53c023e.zip",
)

http_archive(
    name = "com_github_bazelbuild_buildtools",
    sha256 = "8d83c153b7872fee9dc9c4e4114c5ad5fbf3197f1facb3f4a57e87e0e92aaa71",
    strip_prefix = "buildtools-baa9c57c396019f0b7272b95d66f8e2681ed7d2a",
    url = "https://github.com/bazelbuild/buildtools/archive/baa9c57c396019f0b7272b95d66f8e2681ed7d2a.zip",
)

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies")

go_rules_dependencies()

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains")

go_register_toolchains(nogo = "@//:my_nogo")

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("@com_github_bazelbuild_buildtools//buildifier:deps.bzl", "buildifier_dependencies")

buildifier_dependencies()

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

load("@bazel_skylib//lib:versions.bzl", "versions")
load("@//:bazel-version.bzl", "BAZEL_VERSION")

versions.check(BAZEL_VERSION, BAZEL_VERSION)

load("@//:load.bzl", "go_repositories")

go_repositories()
