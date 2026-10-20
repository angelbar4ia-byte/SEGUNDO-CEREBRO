#!/bin/sh
# Copia el contrato de la raíz a docs/ de cada subcarpeta. Editar SIEMPRE el de la raíz.
cd "$(dirname "$0")" || exit 1
for d in FINANZAS GRAVITY HABITOS; do
  mkdir -p "$d/docs"
  cp CONTRATO_CONEXION_APPS.md "$d/docs/CONTRATO_CONEXION_APPS.md"
  echo "Contrato copiado a $d/docs/"
done
