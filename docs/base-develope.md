# Start Development

项目创建好后，在项目目录下运行 `npm i` 安装好依赖，然后再运行 `feflow dev` 就能启动本地服务，服务默认运行在 http://127.0.0.1:8001。

After creating project, run `npm i` in the project to install dependencies. And run `feflow dev` to start local server. The service's location is http://127.0.0.1:8001.

打开 http://127.0.0.1:8001 ，你会看到初始态的一个页面。如果你想修改这个页面，则需要先大概了解一下项目的目录结构，知道去哪改。

Open http://127.0.0.1:8001, you can see a pure page. If you want to change the page, you should know the folder tree.

<!-- 项目的目录结构是由你所选择的脚手架决定的，以本教程所使用的脚手架为例，生成的项目主要结构如下： -->

The project's directory structure is determined by the scaffolding of your choice. Take the scaffolding used in this tutorial as an example. The main structure of the generated project is as follows:

```sh
|- src
    |- assets # 公共的 JS、CSS、Images 目录
    |- middleware # 公共的 Redux 中间件 目录
    |- modules # 公共模块
    |- pages # 页面目录
        |- index # 首页
            |- actions # 页面级的 actions 目录
            |- components # 页面级的公共组件目录
            |- reducers # 页面级的 reducers 目录
            |- index.html # HTML 入口
            |- index.js # 页面 Class
            |- index.less # pageComponent.js 中元素的样式，或者全局样式
            |- init.js # JS 入口
            |- pageComponent.js # React 根组件
    |- reducers # 公共的 reducers 目录
|- feflow.json # Feflow 配置文件
```

```sh
|- src
    |- assets # common JS、CSS、Images directory
    |- middleware # common Redux middleware directory
    |- modules # common module directory
    |- pages # pages directory
        |- index # home page
            |- actions # common actions directory in home page
            |- components # common components directory in home page
            |- reducers # common reducers directory in home page
            |- index.html # home page html
            |- index.js # home page Class
            |- index.less # pageComponent.js 中元素的样式，或者全局样式
            |- init.js # JS 入口
            |- pageComponent.js # React 根组件
    |- reducers # 公共的 reducers 目录
|- feflow.json # Feflow 配置文件
```

其中，`src/pages/index/index.html` 就是 `http://127.0.0.1:8001` 展示的页面。你可以打开 `src/pages/index/pageComponent.js` 文件进行修改。


