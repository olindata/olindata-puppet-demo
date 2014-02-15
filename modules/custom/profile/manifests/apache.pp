class profile::apache {
  include ::apache
  include apache::mod::php
  a2mod { 'rewrite': }
}