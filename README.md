# AI-Marketing

**13 skills de marketing en français pour agents IA** (Claude Code, Claude Desktop, et tout agent
qui lit le format Agent Skills).

Ces skills ne récitent pas de la théorie. Ils font travailler l'agent : il pose les bonnes
questions, il analyse une vraie entreprise, il remplit un SWOT, il écrit des recommandations
défendables. La méthode vient d'un cours de marketing complet (contexte belge), transformé en
procédures exécutables.

---

## Le principe : une méthode en 3 temps

Tout part d'une question, pas d'un outil. C'est le fil rouge de tous les skills.

```
                         ┌──────────────────┐
                         │    MARKETING     │
                         └────────┬─────────┘
        ┌─────────────────────────┼─────────────────────────┐
        │                         │                         │
        ▼                         ▼                         ▼
┌───────────────┐        ┌────────────────┐        ┌─────────────────┐
│ 1. PROBLÉMA-  │        │  2. MARKETING  │        │ 3. RECOMMANDA-  │
│    TIQUE      │───────▶│     D'ÉTUDE    │───────▶│    TIONS        │
│               │        │                │        │                 │
│ Quel est le   │        │ Analyse        │        │ Stratégiques    │
│ constat ?     │        │ interne  +     │        │ puis            │
│ Quelle est la │        │ externe        │        │ opérationnelles │
│ question ?    │        │      ↓         │        │                 │
│               │        │    SWOT        │        │                 │
└───────────────┘        └────────────────┘        └─────────────────┘
```

**Règle d'or :** chaque élément du SWOT doit répondre à la problématique. Chaque
recommandation doit sortir du SWOT. Si le lien casse, l'analyse ne vaut rien.

---

## Les 13 skills

### Orchestration

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-plan-complet`](skills/marketing-plan-complet) | Le chef d'orchestre. Enchaîne les 3 temps et appelle les autres skills dans le bon ordre. **Commence ici** si tu veux une analyse complète. |

### 1. Problématique

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-problematique`](skills/marketing-problematique) | Transforme un constat flou en question de recherche. Choisit les sources : desk avant field, quali avant quanti. |

### 2. Marketing d'étude — analyse interne

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-marque`](skills/marketing-marque) | Signalétique, storytelling, capital de marque, notoriété, types et stratégies de marque. |
| [`marketing-audit-4p`](skills/marketing-audit-4p) | Les 4P en **observation** : ce que l'entreprise fait déjà en produit, prix, place, promo. |
| [`marketing-audit-stp`](skills/marketing-audit-stp) | Les 4P en **déduction** : quelle segmentation, quelle cible, quel positionnement l'entreprise a choisis. |

### 2. Marketing d'étude — analyse externe

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-micro-environnement`](skills/marketing-micro-environnement) | Clients, concurrents, groupes d'influence, partenaires. Les acteurs proches mais externes. |
| [`marketing-marche`](skills/marketing-marche) | Demande quantitative et qualitative, offreurs, parts de marché, distributeurs, influenceurs, régulateurs. |
| [`marketing-macro-environnement`](skills/marketing-macro-environnement) | PESTEL. Les tendances lentes qui s'imposent à l'entreprise. |

### 2. Marketing d'étude — synthèse

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-swot`](skills/marketing-swot) | La matrice, mais surtout : hiérarchiser, garder le lien avec la problématique, éviter les 4 erreurs classiques. |

### 3. Recommandations

| Skill | Ce qu'il fait |
|---|---|
| [`marketing-ciblage-persona`](skills/marketing-ciblage-persona) | Choisir ou changer de cible. Cœur de cible, persona, carte d'empathie. |
| [`marketing-positionnement`](skills/marketing-positionnement) | Triangle d'or, mapping, énoncé de positionnement. Simple, attractif, crédible, différent. |
| [`marketing-mix-4p`](skills/marketing-mix-4p) | Le plan opérationnel : produit, prix, place. Chaque décision renvoie au positionnement. |
| [`marketing-plan-communication`](skills/marketing-plan-communication) | Le P-Promo en 8 étapes : cible, objectif, message, ton, canaux, calendrier, budget, mesure. |

---

## Installation

### Claude Code / Claude Desktop

```bash
git clone https://github.com/marty-ds/AI-Marketing.git
cd AI-Marketing
./install.sh
```

Le script crée un lien symbolique de chaque skill vers `~/.claude/skills/`. Tu gardes le repo
comme source unique : un `git pull` met tout à jour d'un coup.

Pour installer dans un projet précis plutôt que globalement :

```bash
./install.sh /chemin/vers/mon-projet/.claude/skills
```

### Installation manuelle

Copie les dossiers de `skills/` vers `~/.claude/skills/`.

### Désinstallation

```bash
./install.sh --uninstall
```

---

## Comment s'en servir

Une fois installés, les skills se déclenchent tout seuls quand tu parles marketing. Tu n'as
rien à invoquer.

**Analyse complète :**
> « Fais l'analyse marketing complète de ma boulangerie artisanale à Namur. Elle ne vend
> presque rien le matin. »

**Un morceau précis :**
> « Fais-moi le SWOT de cette marque de brosses à dents en bambou. »
>
> « Qui sont mes concurrents dangereux sur le marché du café en grains ? »
>
> « Écris l'énoncé de positionnement de mon app de covoiturage rural. »
>
> « Construis le plan de communication du lancement, budget 15 000 €. »

**Chaque skill demande le contexte qui lui manque avant de répondre.** Il ne devine pas.

---

## Ce que les skills ne font pas

- **Aucun appel API, aucun script.** Que du markdown. Rien à configurer, rien à payer.
- **Ils ne cherchent pas les données à ta place.** Ils te disent quelles données trouver et
  où. Si ton agent a un accès web, il peut les chercher ; sinon, il te les demande.
- **Ils ne remplacent pas une étude terrain.** Ils structurent le raisonnement autour d'elle.

---

## Source

La méthode vient d'un mindmap de cours de marketing, conservé dans
[`docs/`](docs/) :

- [`docs/methode.md`](docs/methode.md) — toute la méthode sur une page.
- [`docs/Mindmap-Marketing.pdf`](docs/Mindmap-Marketing.pdf) — le mindmap d'origine.
- [`docs/mindmap/`](docs/mindmap/) — les 30 schémas et tableaux extraits, en PNG.

Les exemples belges du cours ont été gardés (Delhaize, Colruyt, Jupiler, Côte d'Or, HORECA).
Ils rendent la méthode concrète. Rien n'empêche de l'appliquer ailleurs.

---

## Contribuer

Les contributions sont bienvenues : nouveaux skills, corrections, exemples, traductions.
Lis [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

[MIT](LICENSE).
