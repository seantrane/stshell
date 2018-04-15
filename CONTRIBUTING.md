# Contributing

> Thank you for contributing. Contributions are always welcome, no matter how large or small.

## Table of Contents

- [Guidelines](#guidelines)
- [Pull Requests](#pull-requests)
- [Clone the Repository](#clone-repo)
- [Install Dependencies](#install-dependencies)
- [File Structure](#file-structure)

---

## Guidelines <a id="guidelines"></a>

As a contributor, here are the guidelines you should follow:
- [Code of conduct](https://github.com/seantrane/engineering/blob/master/CODE_OF_CONDUCT.md)
- [How can I contribute?](https://github.com/seantrane/engineering/blob/master/CONTRIBUTING.md#how-can-i-contribute)
- [Using the issue tracker](https://github.com/seantrane/engineering/blob/master/CONTRIBUTING.md#using-the-issue-tracker)
- [Submitting a Pull Request](https://github.com/seantrane/engineering/blob/master/CONTRIBUTING.md#submitting-a-pull-request)
- [Coding rules](https://github.com/seantrane/engineering/blob/master/CONTRIBUTING.md#coding-rules)
- [Working with code](https://github.com/seantrane/engineering/blob/master/CONTRIBUTING.md#working-with-code)

We also recommend to read [How to Contribute to Open Source](https://opensource.guide/how-to-contribute).

---

## Pull Requests <a id="pull-requests"></a>

Thank you for contributing.

* Create your branch from `master`.
* Ensure your [git commit messages follow the required format](https://github.com/seantrane/engineering/blob/master/STYLE_GUIDES.md#git-commit-messages).
* Ensure your scripts are well-formed, well-documented and object-oriented.
* Ensure your scripts are stateless and can be reused by all.
* Update your branch, and resolve any conflicts, before making pull request.
* Fill in [the required template](https://github.com/seantrane/engineering/blob/master/PULL_REQUEST_TEMPLATE.md).
* Do not include issue numbers in the PR title.
* Include screenshots and animated GIFs in your pull request whenever possible.
* Follow the [style guide](https://github.com/seantrane/engineering/blob/master/STYLE_GUIDES.md) [applicable to the language](https://github.com/seantrane/engineering/blob/master/STYLE_GUIDES.md#languages) or task.
* Include thoughtfully-worded, well-structured tests/specs. See the [Tests/Specs Style Guide](https://github.com/seantrane/engineering/blob/master/STYLE_GUIDES.md#tests).
* Document new code based on the [Documentation Style Guide](https://github.com/seantrane/engineering/blob/master/STYLE_GUIDES.md#documentation).
* End all files with a newline.

---

## Clone the Repository <a id="clone-repo"></a>

```bash
git clone https://github.com/seantrane/stshell.git stshell && cd stshell
```

## Install Dependencies <a id="install-dependencies"></a>
```bash
# Using NPM:
npm install
# Using Yarn:
yarn install
```

---

## File Structure <a id="file-structure"></a>
```
stshell/
 ├─ scripts/                   * the directory containing all shell script files
 │   ├─ apps/                  * Apps directory containing app/binary scripts
 │   │   ├─ [node]/            * App/binary directory
 │   │   :   ├─ aliases.sh     * App-related aliases
 │   │       ├─ functions.sh   * App-related functions
 │   │       ├─ install.sh     * App/binary installer
 │   │       └─ path.sh        * App/binary paths
 │   │
 │   ├─ functions/             * Shell functions directory
 │   │   ├─ [lowercase]        * Shell function (with filename identical to function name)
 │   │   :
 │   │
 │   ├─ services/              * Services directory containing service scripting
 │   │   ├─ [aws]/             * Service directory
 │   │   :   ├─ aliases.sh     * Service-related aliases
 │   │       ├─ functions.sh   * Service-related functions
 │   │       ├─ install.sh     * Service installer
 │   │       └─ path.sh        * Service paths
 │   │
 |   ├─ aliases.sh             * Shell aliases (loads all `./apps/**/aliases.sh`)
 |   ├─ functions.sh           * Shell functions (loads all `./functions/*`,
 |   │                           `./apps/**/functions.sh`, `./services/**/functions.sh`)
 |   ├─ response.sh            * Shell response helpers
 |   ├─ support.sh             * Shell support loader
 |   └─ test.sh                * Shell support tests
 │
 ├─ tests/                     * unit/integration tests
 │   ├─ support.sh             * tests for Shell support loader
 │   :
 │
 ├─ package.json               * npm/yarn package config
 └─ yarn.lock                  * yarn lock file for package config
```

---

#### Happy coding!
