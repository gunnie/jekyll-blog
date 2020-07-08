---
layout: post
title:  "Starting a blog"
date:   2020-07-03 19:41:15 -0300
categories: jekyll terraform
author: Gunther Renneboog
---

After many years of writing things up in obscure notebooks I've finally decided to start a weblog.
A big step for sure, but first I had to set up the blog software. Luckily I'm not the only blogger out there who cherishes simplicity, and in this case the solution came in the form of [Jekyll][jekyll-home].

Since I want to focus on writing, and not bother too much with technical issues, I started looking for something that requires little setup and maintenance. So no database, web server configuration etc. Just static files would be excellent. Hence Jekyll.

You basically write a bunch of markdown files, and then use a Ruby gem - `jekyll build` - to output the corresponding html. Different themes are available, and customization is a breeze. On top of that the docs are clear and the community seems very active.

While writing a post, I'm working locally with Docker:
{% highlight shell %}
cd jekyll
docker run --rm --volume="$PWD:/srv/jekyll" \
    -p 4000:4000 -it jekyll/jekyll:4.1.0 jekyll serve
{% endhighlight %}
Any changes I make are automatically picked up so I have immediate feedback in the browser at http://localhost:4000/.

Once I'm ready to publish I can push my code to Github, and then use CI to deploy the site to AWS Cloudfront. That part is a little more complex. By using [TerraForm][terraform] I avoid a lot of manual configuration in the AWS console, and also benefit from all the other advantages this Infrastructure As Code (IAC) approach has to offer.

This is the visual result in the AWS console:
<img class="responsive" src="/assets/images/codepipeline_flow.png">

The source code is available on [GitHub][github-source].

If you prefer working with CloudFormation [this post][other-source] is a good read as well.

[jekyll-home]: https://jekyllrb.com/
[other-source]: https://scratchpad.blog/devops/a-build-pipeline-for-jekyll-sites/
[terraform]: https://www.terraform.io/
[github-source]: https://github.com/gunnie/jekyll-blog
