<div align="center">

  # Chirpy Jekyll Theme

![devices-mockup](https://raw.githubusercontent.com/cotes2020/jekyll-theme-chirpy/master/assets/img/sample/devices-mockup.png)

A minimal, portfolio, sidebar, Bootstrap Jekyll theme with responsive web design and focuses on text presentation. Hope you like it! [Live Demo »](https://chirpy.cotes.info)

## Features

<details>
  <summary>Click to expand/close details</summary>
  &nbsp;

## Getting Started

### Preparation

Follow the [Jekyll Docs](https://jekyllrb.com/docs/installation/) to complete the installtion of basic environment (Ruby, RubyGem, Bundler and Jekyll). In addition, to use the funny script tools, we also need to install [Python](https://www.python.org/downloads/)(version 3.5 or abover) and [ruamel.yaml](https://pypi.org/project/ruamel.yaml/).

Next, [fork](https://github.com/cotes2020/jekyll-theme-chirpy/fork) **Chirpy** and then clone your replicated repository locally.


### Install Jekyll Plugins

Go to root directory of the repository and run the following:

```terminal
$ bundle install
```

`bundle` will install all the dependent Jekyll Plugins listed in file `Gemfile` automatically.


### File Structure

The main files and related brief introductions are listed below.

```sh
jekyll-theme-chirpy/
├── _data
├── _includes      
├── _layouts
├── _posts          # posts stay here
├── _scripts
│   └── travis      # CI stuff, remove it
├── .travis.yml     # remove it, too
├── assets      
├── tabs
│   └── about.md    # the ABOUT page
├── .gitignore
├── 404.html
├── Gemfile
├── LICENSE
├── README.md
├── _config.yml     # configuration file
├── build.sh        # script tool
├── run.sh          # script tool
├── init.sh         # script tool
├── pv.sh           
├── feed.xml
├── index.html
├── robots.txt
├── search.json
└── sitemap.xml
```


### Configuration

Customize the variables in file `_config.yml` as needed.


### Atom Feed

The Atom feed url of your site will be:

```
<SITE_URL>/feed.xml
```

The `SITE_URL` was defined by variable `url` in file `_config.yml`.


###  Run Locally

You may want to preview the site before publishing, so just run the script tool:

```terminal
$ bash run.sh
```

>**Note**: The *Recent Update* list requires the latest git-log date of posts, thus make sure the changes in `_posts` have been committed before running this command.

Open a brower and visit <http://localhost:4000>.

Few days later, you may find that the file changes does not refresh in real time by using `run.sh`. Don't worry, the advanced option `-r` (or `--realtime`) will solve this problem, but it requires [**fswatch**](http://emcrisostomo.github.io/fswatch/) to be installed on your machine.


###  Deploying to GitHub Pages

Before the deployment begins, ensure the `url` in `_config.yml` has been set to `https://<username>.github.io`.

#### Option 1: Built by GitHub Pages

By deploying your site in this way, you can push the source code to GitHub repository directly.

> **Note**: If you want to add any third-party Jekyll plugins or custom scripts to your project, please refer to [*Option 2: Build locally*](#option-2-build-locally).

**1**. Rename your repository as `<username>.github.io`.

**2**. Commit the changes of your repository, then run the initialization script:

```console
$ bash init.sh
```

It will automatically generates the *Latest Modified Date* and *Categories / Tags* page for the posts.

**3**. Push the changes to `origin/master` then go to GitHub website and enable GitHub Pages service for the repository `<username>.github.io`.

**4**. Visit `https://<username>.github.io` and enjoy.


#### Option 2: Build Locally

For security reasons, GitHub Pages runs on `safe` mode, which means the third-party Jekyll plugins or custom scripts will not work. If you want to use any another third-party Jekyll plugins, **your have to build locally rather than on GitHub Pages**.

**1**. On GitHub website, create a brand new repository with name `<username>.github.io` and then clone it locally.

**2**. Build your site by:

```console
$ bash build.sh -d /path/to/<username>.github.io/
```

The build results will be stored in the root directory of `<username>.github.io` and don't forget to push the changes of `<username>.github.io` to branch `master` on GitHub.

**3**. Go to GitHub website and enable GitHub Pages service for the new repository `<username>.github.io`.

**4**. Visit `https://<username>.github.io` and enjoy.

## Documentation

For more information, please see the [tutorial](https://chirpy.cotes.info/categories/tutorial/). In the meanwhile, a copy of the tutorial is also available on the [Wiki](https://github.com/cotes2020/jekyll-theme-chirpy/wiki).

## Sponsoring

If you like this project or have built something through it, please consider sponsoring it, and your support would be greatly appreciated.

[![Ko-fi](https://img.shields.io/badge/Support_Me_on_Ko--fi-ff5e5b?logo=ko-fi&logoColor=white)][ko-fi]&nbsp;
[![Wechat Pay](https://img.shields.io/badge/Support_Me_on_WeChat-brightgreen?logo=wechat&logoColor=white)][donation]&nbsp;
[![Alipay](https://img.shields.io/badge/Support_Me_on_Alipay-blue?logo=alipay&logoColor=white)][donation]

## License

This project is published under [MIT License][license].

[gem]: https://rubygems.org/gems/jekyll-theme-chirpy
[ci]: https://github.com/cotes2020/jekyll-theme-chirpy/actions/workflows/ci.yml?query=event%3Apush+branch%3Amaster
[codacy]: https://app.codacy.com/gh/cotes2020/jekyll-theme-chirpy/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade
[license]: https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/LICENSE
[jekyllrb]: https://jekyllrb.com/
[bootstrap]: https://getbootstrap.com/
[icons]: https://fontawesome.com/
[image]: https://www.clipartmax.com/middle/m2i8b1m2K9Z5m2K9_ant-clipart-childrens-ant-cute/
[demo]: https://cotes2020.github.io/chirpy-demo/
[wiki]: https://github.com/cotes2020/jekyll-theme-chirpy/wiki
[contribute-guide]: https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/docs/CONTRIBUTING.md
[contributors]: https://github.com/cotes2020/jekyll-theme-chirpy/graphs/contributors
[lib]: https://github.com/cotes2020/chirpy-static-assets
[jetbrains]: https://www.jetbrains.com/?from=jekyll-theme-chirpy
[ko-fi]: https://ko-fi.com/coteschung/
[donation]: https://sponsor.cotes.page/
