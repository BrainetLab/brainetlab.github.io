#!/bin/bash
rm -rf _site
jekyll serve -w --port 4002 --config _config.yml
