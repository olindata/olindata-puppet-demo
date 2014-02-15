# What this repository includes

This repo contains everything to set up a simple LAMP cluster with each node having one of three roles:
* Apache webserver
* MySQL database server
* Puppet master / Foreman / Puppetdb

The goal is to add more types of software over time.

# How to use this repsoitory

* clone repo:
	
>git clone https://github.com/olindata/olindata-puppet-demo.git

* pull in the submodules:
	
>cd olindata-puppet-demo

>git submodule update --init

* start vagrant machines

> cd vagrant

> vagrant up (starts a noc, web server and a database server
	

# About the technologies used

This git repository contains an example of a puppet repository. The goal has been to create a setup that is both scalable, maintainable and extensible. 

##open source

We have used open source github modules where possible. We stuck mostly with the standard puppetlabs modules, adjusted with a few extra modules that are widely used. None of these modules have been altered specifically for this environment, making it very easy to adapt this setup. As a rule, nothing in <puppet>/modules/common should be modified without pushing those changes back to the open source community.

##roles and profiles

We used a popular design for this repository, very nicely explained in this blogpost: http://www.craigdunn.org/2012/05/239/

In short: any node has exactly 1 role (eg. production webserver). A role consists out of one or more profiles for each distinct piece of software needed to create a server with that role (eg. a production webserver has apache, php and some vhosts). Each profile uses the resources provided by the open source modules in order to configure the server the profile is included on.

## puppet 3, puppetdb 

Our aim for this repository is to reflect the current set of standards and best practices while using a flexible model. For this reason, this repository does not regard backward compatibility as a goal. Therefore, we use Puppet 3 with all of it's capabilities as well as puppetdb for storing our exported resources.

## hiera

Since backward compatibility is not a concern, we opted for heavy use of hiera. It's first class support in Puppet 3 allows for much cleaner puppet code and we have used it wherever possible. Class parameters will be automatically looked up in our hiera database, which for convenience is included with this repository.

## the foreman

We wanted to create a sample repository using the latest open source standards, which means we opted for the most well developed dashboard. At the time of this writing, that is undoubtedly the foreman (http://theforeman.org).

## vagrant

A proper real life environment contains at least a development, testing and production environment. We have used vagrant and virtualbox in this example to set up a development environment. A testing setup will be added later on, including a full jenkins setup with instrcutions.