# Jekyll powering my personal blog

This setup is also discussed on my weblog in [this post](https://www.zgunnie.com/2020/07/03/jekyll-blog.html).

## Local development

```
cd jekyll
docker run --rm   --volume="$PWD:/srv/jekyll"  -p 4000:4000 -it jekyll/jekyll:4.1.0  jekyll serve
```

## Continuous integration

Deploying our infrastructure:
```
cd terraform
terraform apply
```

Pushing to the master branch will then build and deploy the code to the website.