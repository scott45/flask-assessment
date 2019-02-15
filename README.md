[![Businge Scott](https://img.shields.io/badge/Businge%20Scott-DevOps-green.svg)]()
[![PEP8](https://img.shields.io/badge/code%20style-pep8-orange.svg)](https://www.python.org/dev/peps/pep-0008/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# D1-D2 DevOps Assessment 

## Introduction;
A task done to demonstrate automated building of vm images and GCE server provisioning with Packer and Terraform respectively.

The simple app is running live on http://35.233.130.7:5000/ (site is currently down because the instance was paused)

## Tools & platforms;

>Packer,
>Terraform,
>Flask,
>Google Compute Engine.

## Installation;

> Clone the repo from this url - https://github.com/scott45/flask-assessment.git

## Build packer image;

> cd packer-scripts 

And remember to edit and put self credentials to reflect your account.

## Verify Packer.json file;

> packer validate packer2.json

## Build packer image;

> packer build packer2.json

## Provision Infrastructure with terraform;

> cd Terraform-scripts

And remember to edit and put self credentials in variables.tf to reflect your account.

## Change image name;

> Head over to instance.tf and change image to the one that has been built

## Check the resources to be created;

> terraform plan

## Provision the infrastructure;

> terraform apply


## The MIT License (MIT)

Copyright (c) 2019 [BUSINGE SCOTT [ANDELA]]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
