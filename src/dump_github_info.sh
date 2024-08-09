#!/bin/bash
# Dump GitHub information
gh api --method GET /repos/${{ github.repository }}/releases/tags/${{ github.ref_name }} > release.json || \
gh api --method POST /repos/${{ github.repository }}/releases -f tag_name='${{ github.ref_name }}' -f name='${{ github.ref_name }}' -F generate_release_notes=true > release.json;

