#!/usr/bin/env bash
#
# Installe les skills AI-Marketing pour un agent IA.
#
#   ./install.sh                      -> vers ~/.claude/skills
#   ./install.sh /chemin/vers/skills  -> vers un dossier de ton choix
#   ./install.sh --uninstall          -> retire les liens
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$REPO_DIR/skills"

UNINSTALL=0
TARGET="$HOME/.claude/skills"

for arg in "$@"; do
  case "$arg" in
    --uninstall|-u) UNINSTALL=1 ;;
    -h|--help)
      sed -n '2,9p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
      exit 0 ;;
    *) TARGET="$arg" ;;
  esac
done

if [ ! -d "$SRC_DIR" ]; then
  echo "Erreur : dossier introuvable -> $SRC_DIR" >&2
  exit 1
fi

if [ "$UNINSTALL" -eq 1 ]; then
  echo "Désinstallation depuis $TARGET"
  removed=0
  for skill_path in "$SRC_DIR"/*/; do
    name="$(basename "$skill_path")"
    link="$TARGET/$name"
    if [ -L "$link" ]; then
      rm "$link"
      echo "  retiré   $name"
      removed=$((removed + 1))
    fi
  done
  echo
  echo "$removed skill(s) retiré(s)."
  exit 0
fi

mkdir -p "$TARGET"
echo "Installation vers $TARGET"
echo

linked=0
skipped=0
for skill_path in "$SRC_DIR"/*/; do
  name="$(basename "$skill_path")"
  link="$TARGET/$name"

  if [ -e "$link" ] && [ ! -L "$link" ]; then
    echo "  IGNORÉ   $name  (un vrai dossier existe déjà ici)"
    skipped=$((skipped + 1))
    continue
  fi

  ln -sfn "${skill_path%/}" "$link"
  echo "  installé $name"
  linked=$((linked + 1))
done

echo
echo "$linked skill(s) installé(s), $skipped ignoré(s)."
echo
echo "Les skills sont des liens vers ce repo."
echo "Un 'git pull' ici met tout à jour d'un coup."
echo
echo "Redémarre ton agent, puis essaie :"
echo "  \"Fais l'analyse marketing complète de mon commerce.\""
