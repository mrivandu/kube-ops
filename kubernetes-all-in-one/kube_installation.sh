#!/bin/bash
#===============================================================================
#          FILE: kube_installation.sh
#         USAGE: . ${YOUR_PATH}/kube_installation.sh 
#   DESCRIPTION: 
#        AUTHOR: IVAN DU
#        E-MAIL: mrivandu@hotmail.com
#        WECHAT: ecsboy
#      TECHBLOG: https://ivandu.blog.csdn.net
#        GITHUB: https://github.com/mrivandu
#       CREATED: 2019-06-26 17:05:26
#       LICENSE: GNU General Public License.
#     COPYRIGHT: © IVAN DU 2019
#      REVISION: v1.0
#===============================================================================

# cd kubernetes-all-in-one

. kube_config.sh
. modules/init.sh
. modules/no_passwd_login.sh
. modules/unzip_pkgs.sh

# Copy the binary to the master destination diretory. 
rm -rf ${bin}/*
cp temp/cfssl-tools/* ${bin}/
cp temp/kubernetes-v1.15.0-linux-amd64-1/* ${bin}/
cp temp/etcd-v3.3.13-linux-amd64/{etcd,etcdctl} ${bin}/

# Install the etcd cluster.
. etcd_cluster_installation.sh

# Install the flnneld.
#. flannel_installation.sh