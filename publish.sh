#!/bin/bash
name="DAF-Research"
path=/Users/ehaas/Documents/FHIR/DAF-Research/
echo "================================================================="
echo === Publish $name IG!!! $(date -u) ===
echo "================================================================="
git status
java -jar /Users/ehaas/Downloads/org.hl7.fhir.igpublisher.jar -ig ${path}ig.json -watch
