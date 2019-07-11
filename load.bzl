load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():
    go_repository(
        name = "com_github_bazelbuild_rules_go",
        commit = "3f29dcb26c9e22ae513321ec9096e776c353ebce",
        importpath = "github.com/bazelbuild/rules_go",
    )
    go_repository(
        name = "com_github_otiai10_mint",
        commit = "1d26ec891681a7f861823e4faff5b99ff3086ff9",
        importpath = "github.com/otiai10/mint",
    )
    go_repository(
        name = "ke_bou_monkey",
        commit = "bdf6dea004c6fd1cdf4b25da8ad45a606c09409a",
        importpath = "bou.ke/monkey",
    )
