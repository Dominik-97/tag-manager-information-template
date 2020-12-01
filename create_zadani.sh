#!/bin/bash

read -p "Typ zadání (Zadani.md, Zadani-vypleno.md, Zadani-bez-eventu.md): " zadani

if [ ${zadani} == "Zadani-vyplneno.md" ]; then
read -p "Container id: " container_id
read -p "Category: " category
read -p "Action: " action
read -p "Name: " name
read -p "Value: " value
elif [ ${zadani} == "Zadani-bez-eventu.md" ]; then
read -p "Container id: " container_id
fi

echo "${zadani}, ${container_id}, ${category}, ${action}, ${name}, ${value}, "

if [ ${zadani} == "Zadani-vyplneno.md" ]; then
    sed -e "s/{{container_id}}/${container_id}/" \
        -e "s/{{Category}}/${category}/" \
        -e "s/{{Action}}/${action}/" \
        -e "s/{{Name}}/${name}/" \
        -e "s/{{Value}}/${value}/" \
        Zadani/${zadani} > ${zadani}
elif [ ${zadani} == "Zadani-bez-eventu.md" ]; then
    sed -e "s/{{container_id}}/${container_id}/" \
        Zadani/${zadani} > ${zadani}
else
    cp -f Zadani/${zadani} .
fi

pandoc --metadata-file=metadata.yaml \
    --template=template-setup.tex \
    --listings -H listings-setup.tex \
    --wrap=preserve -f markdown-implicit_figures+hard_line_breaks+escaped_line_breaks \
    -o zadani.pdf ${zadani}