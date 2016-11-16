## Curl request (password is known)
<pre><code>
curl -u 'arthurbaudry:******' http://52.19.76.96:7180/api/v2/cm/deployment > ../../enterprise/labs/2_cluster_deployment.md
</code></pre>

## Result
<pre><code>
{
  "timestamp" : "2016-11-16T18:10:56.864Z",
  "clusters" : [ {
    "name" : "Cluster 1",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "963641344"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_java_heapsize",
            "value" : "963641344"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "1065091072"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "179"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "ip-172-31-9-39.eu-west-1.compute.internal"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "password"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-36c1d859dffd5fc4e47f694942738902",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-5fc90fede3e6dfe8a3926760f96b484e",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-09c60a2bd308822bc"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-7033eb8bbbd314adbb74484c9699ac70",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-08c8df2ee60232d6e"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-a7d623bde35488bfb3752b5372d77de8",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-GATEWAY-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-a7d623bde35488bfb3752b5372d77de8",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "aynvfq9mozibupdgclrlrwh3o"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-a7d623bde35488bfb3752b5372d77de8",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1mywhezht6vkx1jwkwmd1z6vg"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "963641344"
          } ]
        } ],
        "items" : [ ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-5fc90fede3e6dfe8a3926760f96b484e",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-09c60a2bd308822bc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "159rewqw718vncgic5r2vzuph"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-7033eb8bbbd314adbb74484c9699ac70",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-08c8df2ee60232d6e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "c2q937qmk27zop19p11n330x0"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-a7d623bde35488bfb3752b5372d77de8",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6pl8qhthitqe74e9fdl8ihlm5"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "ip-172-31-9-39.eu-west-1.compute.internal"
        }, {
          "name" : "database_password",
          "value" : "password"
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-HTTPFS-e65d54e53fef985927e5fc93670a2b1c"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9xjfwl5mi5rt6wv2u6fhdghiz"
          }, {
            "name" : "secret_key",
            "value" : "qlkH486sJDwZRDfyvQxHInXYa3gmGA"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "ip-172-31-9-39.eu-west-1.compute.internal"
          }, {
            "name" : "oozie_database_password",
            "value" : "password"
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozie"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bzd9jha3y1qfyco53dyfnn32n"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "6"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "JOBHISTORY",
          "items" : [ {
            "name" : "mr2_jobhistory_java_heapsize",
            "value" : "963641344"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "rm_cpu_shares",
            "value" : "1800"
          }, {
            "name" : "rm_io_weight",
            "value" : "900"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "3998"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "resource_manager_java_heapsize",
            "value" : "963641344"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "3998"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "90"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "r3Q7wmD7PVT4qAdy1TPaFaOfUM7qml"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-GATEWAY-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "yarn-JOBHISTORY-a7d623bde35488bfb3752b5372d77de8",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7ey0pi2blzcbbo6737xedu6m7"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-36c1d859dffd5fc4e47f694942738902",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "1adrxou0fwb4tjswl9fbugeiy"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-5fc90fede3e6dfe8a3926760f96b484e",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-09c60a2bd308822bc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "dac9byuk15k8kmg7kyi9mo7ea"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-7033eb8bbbd314adbb74484c9699ac70",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-08c8df2ee60232d6e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "akuxko8iesjxzpbsbaaol41ko"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-a7d623bde35488bfb3752b5372d77de8",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6u0kwgds63ldaopko9eh9x5o3"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-a7d623bde35488bfb3752b5372d77de8",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "54"
          }, {
            "name" : "role_jceks_password",
            "value" : "3l3gqq94qexb8jhzjthq7qmuo"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/dfs/dn"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "831985254"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "200"
          }, {
            "name" : "rm_io_weight",
            "value" : "100"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/dfs/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          }, {
            "name" : "namenode_java_heapsize",
            "value" : "1073741824"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/dfs/snn"
          }, {
            "name" : "secondary_namenode_java_heapsize",
            "value" : "1073741824"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "RvGGSMtycfwaBq4GfPltEsuRL290Sm"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "760jI3KtysMNTYO0YKeEkRkLAdVNIo"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "2fuHyyhv916cBdprzyYQFd7PY4rqIo"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "10"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-DATANODE-36c1d859dffd5fc4e47f694942738902",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "a9p6kxfuyzmmwxo8njxzharcf"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-5fc90fede3e6dfe8a3926760f96b484e",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-09c60a2bd308822bc"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3x9a6ykzvtwx1z3v6g6qpddrr"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-7033eb8bbbd314adbb74484c9699ac70",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-08c8df2ee60232d6e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6x57b2wh350vx0u3ekiqpnwhm"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-a7d623bde35488bfb3752b5372d77de8",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "86nss6othxv2xcuujtxgtia4q"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-36c1d859dffd5fc4e47f694942738902",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8t9envhzyk5g13th3jyfg5cf0"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-a7d623bde35488bfb3752b5372d77de8",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "195avz778ln5by41efg64y5cm"
          } ]
        }
      }, {
        "name" : "hdfs-GATEWAY-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-HTTPFS-e65d54e53fef985927e5fc93670a2b1c",
        "type" : "HTTPFS",
        "hostRef" : {
          "hostId" : "i-01f28507ff96c26a7"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7xng9gzn8y5d1jvl9b71ai9pm"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-36c1d859dffd5fc4e47f694942738902",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8nsdrgzn0j0kqa3xec4voaz9o"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-7033eb8bbbd314adbb74484c9699ac70",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-08c8df2ee60232d6e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8y67omnck9r5s3hx85swfl1pe"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-a7d623bde35488bfb3752b5372d77de8",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "9up1h1rttrbzcd9ctuyg52n9r"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-36c1d859dffd5fc4e47f694942738902",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-0239c013009188f6c"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "abcluster"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "abcluster"
          }, {
            "name" : "namenode_id",
            "value" : "61"
          }, {
            "name" : "role_jceks_password",
            "value" : "6spu60zgehckh89x2c56mqerj"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-a7d623bde35488bfb3752b5372d77de8",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-003e2fb46880ed913"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "abcluster"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "abcluster"
          }, {
            "name" : "namenode_id",
            "value" : "56"
          }, {
            "name" : "role_jceks_password",
            "value" : "5sv760vqjjaxemwfklpbrbbel"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-0239c013009188f6c",
    "ipAddress" : "172.31.9.35",
    "hostname" : "ip-172-31-9-35.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-09c60a2bd308822bc",
    "ipAddress" : "172.31.9.36",
    "hostname" : "ip-172-31-9-36.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-003e2fb46880ed913",
    "ipAddress" : "172.31.9.37",
    "hostname" : "ip-172-31-9-37.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.9"
      } ]
    }
  }, {
    "hostId" : "i-08c8df2ee60232d6e",
    "ipAddress" : "172.31.9.38",
    "hostname" : "ip-172-31-9-38.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ {
        "name" : "memory_overcommit_threshold",
        "value" : "0.9"
      } ]
    }
  }, {
    "hostId" : "i-01f28507ff96c26a7",
    "ipAddress" : "172.31.9.39",
    "hostname" : "ip-172-31-9-39.eu-west-1.compute.internal",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-e65d54e53fef985927e5fc93670a2b1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "c08849266b05648f5378fceaab251868238e97ebd7b9fb7171c009ef5001bee9",
    "pwSalt" : 1410230501616803732,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-e65d54e53fef985927e5fc93670a2b1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "2032164a75266e89917e5232e19639e0379491241d7e09c2cb3ee2f01be44769",
    "pwSalt" : 2647503070274535682,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-e65d54e53fef985927e5fc93670a2b1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "637e43488666becf50a779e3cfca537b6eb61078e74af014cacff92237abc7e7",
    "pwSalt" : -6482483458952125852,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-e65d54e53fef985927e5fc93670a2b1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "42d9aa02c541bfef60be652c8060f5d18bf42f64784411eef33b16f297d410c4",
    "pwSalt" : 7924639200095105861,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-e65d54e53fef985927e5fc93670a2b1c",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "751b3ae889b84b4d81b795a61ffcb303c1c6294e751cee405ddc30ba20b63f1f",
    "pwSalt" : 6197699128301882375,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ],
    "pwHash" : "2d083da48486cebbd1fbf66ae56a4f28cee26fc217dda31d976f8960bfde603d",
    "pwSalt" : 1478348854274427986,
    "pwLogin" : true
  }, {
    "name" : "arthurbaudry",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "baa4c80e3256e34b6326b5434501d8392a6f301b306c948ede1d52ff88098e65",
    "pwSalt" : 7854206735144407770,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "054524ef21c696a9108800055d2ee3750f49f056b4d5bd095b47c6e03a08d74f",
    "pwSalt" : -1337124628111599217,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.9.0",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20161006-1801",
    "gitHash" : "898a5e032c080e18833dfc58180761f6ef2ea351",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "ip-172-31-9-39.eu-west-1.compute.internal"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "password"
        }, {
          "name" : "firehose_database_user",
          "value" : "amon"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "ip-172-31-9-39.eu-west-1.compute.internal"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "password"
        }, {
          "name" : "headlamp_database_user",
          "value" : "rman"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "4v65mi3ujqyfqlf809ro7lxsk"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9a813dxa297fbr2kxmbu28ps0"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "b8noq583ougeypncrm4qowyuk"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "7zt1bd84yvfa465o7u1bdrwmb"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "98pvgoovpwbwg3vwcdmwytlph"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-e65d54e53fef985927e5fc93670a2b1c",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-01f28507ff96c26a7"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "idm6tcilhg071uo0stjg1dxt"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/27/2012 23:20"
    }, {
      "name" : "LOCALE",
      "value" : "en"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "REMOTE_PARCEL_REPO_URLS",
      "value" : "https://archive.cloudera.com/cdh5/parcels/{latest_supported}/,https://archive.cloudera.com/cdh4/parcels/latest/,https://archive.cloudera.com/impala/parcels/latest/,https://archive.cloudera.com/search/parcels/latest/,https://archive.cloudera.com/accumulo/parcels/1.4/,https://archive.cloudera.com/accumulo-c5/parcels/latest/,https://archive.cloudera.com/kafka/parcels/latest/,https://archive.cloudera.com/navigator-keytrustee5/parcels/latest/,https://archive.cloudera.com/spark/parcels/latest/,https://archive.cloudera.com/sqoop-connectors/parcels/latest/"
    } ]
  }
}
</code></pre>