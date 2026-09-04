#!/usr/bin/env bash
#
# Contrôle la forme de chaque skill avant un commit.
#   ./validate.sh
#
set -uo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$REPO_DIR/skills"
MAX_DESC=1024

pass=0
fail=0

fail_msg() {
  printf '  \033[31mKO\033[0m  %s : %s\n' "$1" "$2"
  fail=$((fail + 1))
}

echo "Contrôle des skills dans $SRC_DIR"
echo

for skill_path in "$SRC_DIR"/*/; do
  dir_name="$(basename "$skill_path")"
  file="$skill_path/SKILL.md"
  errors=0

  if [ ! -f "$file" ]; then
    fail_msg "$dir_name" "SKILL.md manquant"
    continue
  fi

  # Le frontmatter doit ouvrir en toute première ligne.
  if [ "$(head -n 1 "$file")" != "---" ]; then
    fail_msg "$dir_name" "le frontmatter ne commence pas en ligne 1"
    errors=1
  fi

  name="$(awk '/^---$/{n++; next} n==1 && /^name:[[:space:]]/{sub(/^name:[[:space:]]*/,""); print; exit}' "$file")"
  if [ -z "$name" ]; then
    fail_msg "$dir_name" "champ 'name' absent"
    errors=1
  elif [ "$name" != "$dir_name" ]; then
    fail_msg "$dir_name" "name='$name' ne correspond pas au dossier"
    errors=1
  fi

  desc="$(awk '/^---$/{n++; next} n==1 && /^description:[[:space:]]/{sub(/^description:[[:space:]]*/,""); print; exit}' "$file")"
  if [ -z "$desc" ]; then
    fail_msg "$dir_name" "champ 'description' absent"
    errors=1
  else
    len=${#desc}
    if [ "$len" -gt "$MAX_DESC" ]; then
      fail_msg "$dir_name" "description trop longue ($len > $MAX_DESC caracteres)"
      errors=1
    fi
    if [ "$len" -lt 60 ]; then
      fail_msg "$dir_name" "description trop courte ($len caracteres) : dis quand declencher"
      errors=1
    fi
  fi

  # Les fichiers cites dans references/ doivent exister.
  while IFS= read -r ref; do
    [ -z "$ref" ] && continue
    if [ ! -f "$skill_path/$ref" ]; then
      fail_msg "$dir_name" "reference introuvable -> $ref"
      errors=1
    fi
  done < <(grep -oE 'references/[A-Za-z0-9._-]+\.md' "$file" 2>/dev/null | sort -u)

  if [ "$errors" -eq 0 ]; then
    printf '  \033[32mOK\033[0m  %s\n' "$dir_name"
    pass=$((pass + 1))
  fi
done

echo
echo "$pass skill(s) valide(s), $fail erreur(s)."
[ "$fail" -eq 0 ] || exit 1
