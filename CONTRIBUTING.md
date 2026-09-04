# Contribuer à AI-Marketing

Merci de vouloir aider. Voici comment faire.

## Ce qui est le bienvenu

- **Corriger** une erreur de méthode ou de français.
- **Enrichir** un skill existant : un tableau qui manque, un piège classique, un exemple concret.
- **Ajouter** un skill qui complète la méthode (ex. : plan média, étude de prix, veille concurrentielle).
- **Traduire** un skill vers une autre langue (dans un dossier `skills-<langue>/`).

## Ce qui n'est pas le bienvenu

- Des skills qui dépendent d'une API payante ou d'une clé secrète. Ce repo reste en markdown pur.
- Du contenu recopié d'un manuel sous droits d'auteur.
- Des skills qui recouvrent un skill existant sans le dire. Si tu chevauches, ajoute un renvoi
  croisé dans les deux `description`.

## Écrire un skill

Un skill = un dossier dans `skills/`, avec un `SKILL.md` dedans.

```
skills/mon-skill/
├── SKILL.md              # obligatoire
└── references/           # facultatif : les tableaux longs
    └── ma-table.md
```

### Le frontmatter

```yaml
---
name: mon-skill
description: Quand l'utilisateur veut ... Utilise aussi quand il dit « ... », « ... ». Pour X, voir `autre-skill`.
metadata:
  version: 1.0.0
---
```

Règles :

1. `name` doit être **identique au nom du dossier**. Minuscules, tirets, pas d'accent.
2. `description` fait moins de 1024 caractères. Elle dit **quand** déclencher, pas ce que le
   skill contient. Mets des phrases déclencheuses entre guillemets, telles qu'un utilisateur
   les écrirait.
3. Finis la description par un renvoi vers les skills voisins. Cela évite les faux départs.

### Le corps

Suis le même moule que les autres :

1. **Ton rôle** — une phrase.
2. **Avant de commencer** — ce qu'il faut demander à l'utilisateur.
3. **La méthode** — étape par étape, numérotée.
4. **Tableaux de référence** — le contenu dur.
5. **Pièges à éviter** — les erreurs classiques.
6. **Le livrable** — le format de sortie attendu.

Écris à l'impératif, en t'adressant à l'agent : « Demande… », « Classe… », « Vérifie… ».

### Langue

Le français est la langue du repo. Garde les termes anglais du métier tels quels quand ils
sont d'usage : SWOT, PESTEL, packaging, mapping, persona, top of mind, POEM, above the line.

## Vérifier avant d'envoyer

```bash
./validate.sh
```

Le script contrôle que chaque `name` correspond à son dossier, que la description existe et
qu'elle ne dépasse pas la limite.

## Envoyer

1. Fork le repo.
2. Crée une branche : `git checkout -b ajout-skill-veille`.
3. Commit avec un message clair, en français.
4. Ouvre une pull request. Explique **pourquoi** ce changement aide.

## Source de la méthode

La méthode vient d'un mindmap de cours, conservé dans [`docs/`](docs/). Si tu ajoutes un
morceau de méthode qui n'y est pas, dis-le dans la PR et cite ta source.
