# travis-ci-poc [![Build Status](https://travis-ci.org/DysonLinDev/travis-ci-poc.svg?branch=master)](https://travis-ci.org/DysonLinDev/travis-ci-poc)


This is simeple practice about integrating `travis-ci` and `github`.

1. create a public repo in github.
2. go to settings and click `integration and services` tag on the left side.
3. click add service and chose `travis ci`.
4. go to travis and chose the name of repo, and then active travis.
5. Now, we get a failed build. -> that's because we didn't set up our `.travis.yml`.
6. add `.travis.yml`.

.travis.yml
```
language: node_js
node_js:
  - "9.3.0"

```
7. we still get a error that we don't have test script , so I added a hard-coded echo to make test passed.

package.json
```
"scripts": {
    "test": "echo pass"
  }
```
8. install travis cli `command line interface` in your local and run `travis setup releases`.
9. everytime we push commit to `master` travis will check and auto release a version for us.
10. let's integrate with `Slack`.
11. go to `https://slack.github.com/` and connect your repo with slack channel.
12. add `after_success` in `.travis.yml` for trigging slack.
