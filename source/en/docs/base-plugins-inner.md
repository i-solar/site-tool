<!-- title: 插件
--- -->

# Plugin

<!-- 目前为止，你可能接触到了 Feflow 的一些命令，现在，我要揭开它们的真面目，即它们都是 Feflow 内置插件注册的命令。 -->

At present, you may meet some of Feflow's commands, and now I will uncover their true face. They are all registered by Feflow's inner plugins.

<!-- 插件是 Feflow 的一个重要特性，本质上 Feflow 就是一个插件管理工具，每个插件可以在 Feflow 上注册多个命令，这样一来，Feflow 就支持很多命令了。 -->

Plugin is an important feature of Feflow. In fact, Feflow is a plugin management tool, each plugin can register multiple commands on Feflow, so Feflow can support many commands.

<!-- 现在，就让我们来一览 Feflow 所有的内置插件以及他们注册的命令。 -->

Now let's take a look at all of Feflow's inner plugins and the commands they registered.

<!-- ## 模块管理插件 -->

## Package Management Plugin

<!-- 该插件包含两个命令： -->

The plugin contains two commands:

<!-- ```sh
# 1. 安装包
feflow install <package-name>
# 2. 卸载包
feflow uninstall <package-name>
``` -->

```sh
# 1. install package
feflow install <package-name>
# 2. uninstall package
feflow uninstall <package-name>
```

<!-- `feflow install <package-name>` 命令是迄今为止用的最多的命令之一，它可以将各种 NPM 模块安装至 `~/.feflow/node_modules` 下面。我们用它安装脚手架、构建器或者是插件。 -->

`feflow install <package-name>` can install NPM modules under `~/.feflow/node_modules`. We can use it to install scaffolds, builders and plugins.

<!-- `feflow uninstall <package-name>` 命令与上述命令相反，它用于卸载 Feflow 下的 NPM 模块。 -->

`feflow uninstall <package-name>` is the opposite of the above command. It is used to uninstall NPM modules.

<!-- 由于这个插件可以安装或卸载任意 NPM 模块，所以我们称之为模块管理插件。有了这个插件，就方便了诸如脚手架、构建器、部署器、插件的管理。 -->

The plugin can install or uninstall any NPM module, so we call it package management plugin. With this plugin, it's easy to manage such as scaffold, builder, deployer, and plugin.

<!-- ## 脚手架调度插件 -->

## Scaffold Dispatch Plugin 

<!-- 该插件包含一个命令： -->

This plugin contains one command:

```sh
feflow init
```

<!-- 这个插件可以让用户从本地已经安装好的脚手架中选取一个用作项目的创建，因此我们把这个插件称为脚手架调度插件。 -->

The plugin allows the user to select one of the local installed scaffolds for project creation, so it calls scaffold dispatch plugin.

<!-- 脚手架调度插件每次执行的时候，会自动更新本地所有有新版本的脚手架，如果你想跳过更新，可以加上一个 `--disableCheck` 的参数： -->

Each time the plugin is executed, it will automatically update all local scaffolds. If you want to skip the update, you can add a `--disableCheck` parameter.

```sh
feflow init --disableCheck
```

<!-- > 关于脚手架的开发可以阅读[这里](./advance-scaffold-custom.html) -->

> Read [this](./advance-scaffold-custom.html) can get more informations about scaffold developement.

<!-- ## 构建器调度插件 -->

## Builder Dispatch Plugin

<!-- 该插件包含两个命令： -->

This plugin contains two commands:

```sh
# 1. 本地开发
feflow dev
# 2. 生成打包文件
feflow build
```

<!-- 这个插件会获取项目根目录下 `feflow.js` 或者 `feflow.json` 配置文件中的 `builderType` 字段的值作为构建器的名字。如果你没有用 Feflow 安装过这个构建器，该插件则会自动帮你安装好，然后这个插件会委托构建器执行 `dev` 或者是 `build` 命令，实现构建过程。 -->

The plugin will get the value of the `builderType` field as builder's name from the `feflow.js` or `feflow.json` configuration file which is in the project root. If you haven't installed the builder via Feflow, the plugin will automatically install it for you, and it will tell the builder to run `dev` or `build` command to finish the build process.

<!-- 因为构建器是独立的，这个插件会根据配置选择指定的构建器进行构建，所以我们把这个插件称为构建器调度插件。这种将构建器分离出来的方式有效的帮助了项目升级构建代码的过程。 -->

Builder is independent, and the plugin will select builder for building via configuration, so we call it builder dispatch plugin. This method effectively helps project migrate to new building code.

<!-- > 关于构建器的开发可以阅读[这里](./advance-builder-custom.html) -->

> Read [this](./advance-scaffold-custom.html) can get more informations about builder developement.

<!-- ## 部署器调度插件 -->

## Deployer Dispatch Plugin.

<!-- 该插件包含一个命令： -->

This plugin contains one command:

```
feflow deploy
```

<!-- 这个插件会获取项目根目录下 `feflow.js` 或者 `feflow.json` 配置文件中的 `deployerType` 字段的值作为部署器的名字，然后委托部署器执行 `deploy` 命令，实现部署过程。 -->

The plugin will get the value of the `deployerType` field as deployer's name from the `feflow.js` or `feflow.json` configuration file which is in the project root, then tell the builder to run `deploy` command to finish the deploy process.

<!-- > 关于部署器的开发可以阅读[这里](./deployer-custom.html) -->

<!-- ## 全局配置插件 -->

## Global Config Plugin

<!-- 这个插件可能一般用的比较少，它是用来在 ~/.feflow/.feflowrc.yml 文件中设置和获取配置项的，这个文件可以作为 Feflow 全局的配置文件使用。Feflow 内置插件会用到该文件中的两个配置项，一个是 `registry`，一个是 `proxy`，都是用于 Feflow 或插件下载包时需要走私有的仓库或者代理的情况。如果你自己开发了插件，并且想给用户一些自定义的配置，就可以利用该插件来添加这些配置，然后你的插件可以通过 Feflow 传过来的上下文获取到这些配置。 -->

Perhaps the plugin is used less, it is always used to set or get the configuration items in ~/.feflow/.feflowrc.yml file. This file can be used as a Feflow global configuration file. The inner plugin will use two configuration items in the file, one is `registry` and the other is `proxy`, which is used when Feflow or the plugin needs private repository or proxy to download the package. If you develop a plugin and want to give users some custom configuration, you can use the plugin to add these configurations, and then your plugin can get these configurations from the context by Feflow.

<!-- 全局配置插件注册了一个 `config` 命令，并且支持 `set`、`get`、`list` 三个子命令，用法如下： -->

Global config plugin registers a `config` command and supports three subcommands: `set`, `get`, `list`. The usage is as follows:

```sh
# 列出所有配置项
feflow config list
# 获取一个配置项
feflow config get <key>
# 添加或修改一个配置项
feflow config set <key> <value>
```

```sh
# list all the config items.
feflow config list
# Get a config item.
feflow config get <key>
# Add or modify a config item.
feflow config set <key> <value>
```

<!-- ## 代码检查插件 -->

## Code Lint Plugin

<!-- Feflow 还内置了一个代码检查插件，可以方便你用 ESLint 检查项目的代码： -->

Feflow also has a code lint plugin, so it is easy for you to check the project's code with ESLint:

```sh
feflow lint [folder]
```

<!-- 它还支持 `--ignore` 参数，允许检查时忽略一些目录或文件。 -->

It supports the `--ignore` parameter, which allows you to ignore some directories or files when checking.

<!-- ## 自定义插件 -->

## Custom Plugin

<!-- Feflow 除了内置一些核心插件外，还支持开发者编写自己的插件并注册到 Feflow 上，将 Feflow 打造成自己独有的一套工程化工具，关于如何开发一个自己的插件请阅读[自定义插件](./advance-plugins-custom.html)一章。 -->

In addition to inner plugins, Feflow alse supports developers to write their own plugins and register them, so you can get a special engineering tool. If you want to know more about how to develop a plugin, please read [custom plugin](./advance-plugins-custom.html) chapter.