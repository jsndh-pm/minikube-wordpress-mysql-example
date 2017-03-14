#!/bin/bash



kubectl delete deployment mysql --namespace wordpress-development
kubectl delete service mysql --namespace wordpress-development

kubectl delete deployment wordpress --namespace wordpress-development
kubectl delete service wordpress --namespace wordpress-development

kubectl delete deployment phpmyadmin --namespace wordpress-development
kubectl delete service phpmyadmin --namespace wordpress-development

kubectl delete secret mysql-credentials --namespace wordpress-development

kubectl delete pvc wordpress-volume --namespace wordpress-development
kubectl delete pvc mysql-volume --namespace wordpress-development

kubectl delete pv local-volume-0001
kubectl delete pv local-volume-0002

kubectl delete namespace wordpress-development