#!/usr/bin/env bash

[ -z "$1" ] && { cd ~; return 0 2>/dev/null || exit 0; }

# Validate
[[ "$1" =~ ^[0-9]+$ ]] || {
  echo "Usage: d <positive number>"
  return 1 2>/dev/null || exit 1
}

cd "$(printf -v p '../%.0s' $(eval "echo {1..$1}"); echo "$p")"
