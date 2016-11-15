## On journal nodes
<pre><code>
sudo mkdir /dfs/jn
sudo chown hdfs:hadoop /dfs/jn
</code></pre>


## Do this when finished 

### Configurez le Rôle d'interface Web HDFS du ou des service(s) Hue Hue pour quil corresponde à un rôle HTTPFS plutôt quà un NameNode. Documentation
Pour chacun des services Hive Hive, arrêtez le service Hive, sauvegardez la base de données Hive Metastore dans un magasin persistant, exécutez la commande du service "Mettre à jour les NameNodes de Hive Metastore" puis redémarrez les services Hive.
http://tiny.cloudera.com/cm5-configure-HA