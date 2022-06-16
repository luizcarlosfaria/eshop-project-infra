#!/bin/bash

#=============================================================================
# Copyright Luiz Carlos Faria 2022. All Rights Reserved.
# This file is licensed under the MIT License.
# License text available at https://opensource.org/licenses/MIT
#=============================================================================

# dashboard #################################################################

echo "$(tput setaf 2)Criando namespaces de projeto...$(tput sgr0)"
kubectl apply -f ./04-namespaces.yaml
