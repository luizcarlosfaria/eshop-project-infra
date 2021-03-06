#!/bin/bash

#=============================================================================
# Copyright Luiz Carlos Faria 2022. All Rights Reserved.
# This file is licensed under the MIT License.
# License text available at https://opensource.org/licenses/MIT
#=============================================================================

################################
## v1 ------------

while getopts ui flag; do
    case "${flag}" in
    u) operation=delete ;;
    i) operation=apply ;;
    esac
done

operation=${operation:-apply}

echo "operation: $operation"

echo "$(tput setaf 2)Implantando RabbitMQ Cluster Operator...$(tput sgr0)"

kubectl ${operation} -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

echo "$(tput setaf 2)Implantando RabbitMQ Messaging Topology Operator...$(tput sgr0)"

kubectl ${operation} -f "https://github.com/rabbitmq/messaging-topology-operator/releases/latest/download/messaging-topology-operator-with-certmanager.yaml"