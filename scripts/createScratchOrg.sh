#!/bin/bash

# Variables
SCRATCH_ORG_ALIAS="DevScratchOrg"
SCRATCH_ORG_DEF_FILE="config/project-scratch-def.json"
DURATION_DAYS=7

# Create Scratch Org
echo "Creating scratch org..."
sf org create scratch --target-dev-hub devHub --definition-file $SCRATCH_ORG_DEF_FILE --alias $SCRATCH_ORG_ALIAS --duration-days $DURATION_DAYS

# Push source to Scratch Org
echo "Pushing source to scratch org..."
sf project deploy start --target-org $SCRATCH_ORG_ALIAS

# Import data
echo "Importing data..."
sf data import tree --plan data/data-plan.json --target-org $SCRATCH_ORG_ALIAS

# Open Scratch Org
echo "Opening scratch org..."
sf org open --target-org $SCRATCH_ORG_ALIAS

echo "Scratch org setup complete."