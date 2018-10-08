# Contribution guidelines

Keep in mind that the list is very mature by now, so the bar of getting something accepted is high. Only submit something unique and generally useful.

  - **If you just created something, wait at least 30 days before submitting** to give it some time to mature and ensure it's not just a publish-and-forget type of project
  - Actively maintained:
    - Regular, recent commits
    - Or, for finished projects, issues and pull requests are responded to
  - Ensure your work follows general quality rules
  (look at [Writing Shards](https://crystal-lang.org/docs/guides/writing_shards.html) tutorial if this is a Crystal shard)
  - Your shard **must** have periodical (e.g. daily or weekly) builds set up on a publicly accessible CI against latest stable Crystal (nightly is optional)
    - For Travis CI see https://docs.travis-ci.com/user/cron-jobs. Note that you can also run Crystal nightly builds using [Docker-based approach](https://gist.github.com/vladfaust/9cf8ca03b00a3ab5c0e86ca8381acad7)

## List quality rules

  - List items are sorted alphabetically
  - Descriptions are clear and concise. For example, excessive information like *"... for Crystal programming language"* is omitted, because it is implied
  - No duplicates
  - No unnecessary empty lines and trailing spaces

Most of this rules are guaranteed by automatic specs (`crystal spec`). Be sure specs pass before creating a PR.
