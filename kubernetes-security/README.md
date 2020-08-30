# secutiry
## task1
01-sabob.yaml  	создаем sa bob
    kubectl get sa --all-namespaces | grep bob
02-crb.yaml    	биндим ему кластерную роль admin
    kubectl get clusterrolebinding | grep admin
03-sadave.yaml 	создаем sa dave
    аналогично проверяем далее, иначе уточню
04-cr.yaml     	создем роль с пустым набором разрешающих правил
05-crb.yaml    	биндим эту пустую роль dave (можно и не биндить - пусть висит без парв и так)
## task2
01-ns.yaml		создаем ns prometheus
    kubectl get ns
02-sacarol.yaml		создаем sa carol
03-role.yaml		создаем кластерную роль с нужным набором глаголов в отношении pods
    kubectl get clusterrole | grep prometheus
04-rolebinding.yaml	привязываем существующую sa к определенной роли
## task3
01-nsdev.yaml		создаем ns dev
02-sajane.yaml		создаем sa jane
03-janeadmin.yaml	даем admin для jane
04-saken.yaml		создаем sa ken
05-kenview.yaml		даем view для ken

