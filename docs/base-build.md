<!-- title: 打包构建
--- -->
# Build And Bundle

<!-- 项目开发满意后，你可能想部署到正式环境中，那么首先就得把项目代码构建成浏览器能运行的版本。运行 `felfow build` 就会在项目根目录下生成一个打包后的目录，不同脚手架、不同构建器生成的目录以及目录里面的内容都各不相同。 -->

After developing the project, you may want to deploy it to the production environment. First, you should build the project into a version that the browser can run. Running `felfow build` can do it. It will generate a directory in the project root directory.  Different scaffolding or different builders will generate different directories and contents.

<!-- 以教程中的项目为例，运行 `feflow build` 就会生成一个 `dist` 目录，里面的目录结构如下： -->

In our tutorial, you can see a directory named `dist` after running `feflow build`. The directory structure is below:

<!-- ```sh
|- cdn
    |- <bizName> # 目录名根据 feflow.json 中的业务名称属性 bizName 决定，里面包含 JS、CSS 和图片等静态资源
        |- img # 图片资源
|- offline
    |- offline.zip # 离线包
|- webserver
    |- <bizName> # 目录名根据 feflow.json 中的业务名称属性 bizName 决定，里面包含了页面入口
        |- index.html # 首页页面入口
``` -->

```sh
|- cdn
    |- <bizName> # The directory name is determined by the field `bizName` in feflow.json, it contains JS, CSS, images and other assets.
        |- img # image assets.
|- offline
    |- offline.zip # offline package.
|- webserver
    |- <bizName> # The directory name is determined by the field `bizName` in feflow.json, it contains page entry.
        |- index.html # home page entry.
```

<!-- 你现在可以把打包后的文件部署在服务器上。 -->

Now you can deploy these files on the server.
