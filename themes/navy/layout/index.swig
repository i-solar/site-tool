<header id="banner">
  <div class="wrapper">
    <div class="inner">
      <h2 id="banner-title">{{ page.subtitle }}</h2>
      <div id="banner-bio">{{ page.bio }}</div>
      <div id="banner-buttons">
        <a href="#" class="intro">介绍文章</a>
        <a href="/zh-cn/docs/" class="get-started">开始使用</a>
      </div>
      <div id="banner-share">{{ partial('partial/share') }}</div>
    </div>
  </div>
</header>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      {{ page.content }}
      <div id="intro-user-wrap">
        <h2>哪些产品在使用</h2>
        <ul>
          <li class="intro-user-item">
            <img src="https://qpic.url.cn/feeds_pic/Q3auHgzwzM7V1vPRHVGgUpn0ybcv1yibsq3l6E5T8MyluoRGVTibfGPg/" />
          </li>
          <li class="intro-user-item">
            <img src="https://qpic.url.cn/feeds_pic/ajNVdqHZLLDJ6PV59GoGcJZ7Il5kZFOBQhKzJ3xdTY6aqIV0Bciaobw/" />
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>