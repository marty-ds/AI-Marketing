# AI-Marketing

**Donne à ton assistant IA la méthode d'un consultant marketing. En français.**

<sub>*French-language marketing skills for AI agents (Claude Code, Claude Desktop, and any agent that reads the Agent Skills format).*</sub>

---

## C'est quoi, en une phrase ?

Tu installes 18 fichiers. Ensuite, quand tu poses une question marketing à ton assistant IA,
il ne répond plus au hasard : **il suit une vraie méthode**, celle d'un cours de marketing
complet.

**Avant**

> **Toi :** Fais-moi le SWOT de ma boulangerie.
>
> **L'IA :** Voici un SWOT générique avec 4 cases et des idées vagues.

**Après**

> **Toi :** Fais-moi le SWOT de ma boulangerie.
>
> **L'IA :** D'abord, quelle est ta problématique ? … Bien. Maintenant je classe chaque point :
> celui-ci est interne, celui-là externe. Je les hiérarchise. Attention, « être plus présent
> sur les réseaux » est une recommandation, pas un constat — je le récris. Voici ton SWOT,
> avec le lien vers chaque recommandation qui en découle.

---

## À quoi ça sert ? 3 exemples

| Tu écris… | Ce que tu obtiens |
|---|---|
| « Je lance un salon de coiffure à Liège, aide-moi. » | Une analyse complète : le problème, le marché, les concurrents, le SWOT, la cible, le positionnement, et les **7P du service** — parce que l'IA a reconnu que c'était un service. |
| « Personne ne connaît ma marque de granola. » | Une problématique bien posée, une analyse de notoriété, puis un plan de communication en 8 étapes avec les canaux, le budget et les indicateurs. |
| « Comment préparer mes entretiens clients ? » | Un guide d'entretien en entonnoir, la technique du portrait chinois, et le nombre de personnes à interroger. |

Tu n'as **rien à taper de spécial**. Tu parles normalement. L'IA choisit toute seule le bon
outil.

---

## Installation

> **Tu n'as jamais utilisé le Terminal ?** C'est normal. C'est juste une fenêtre où on tape du
> texte. Voici comment l'ouvrir :
>
> - **Sur Mac** : appuie sur `Cmd` + `Espace`, tape `Terminal`, puis `Entrée`.
> - **Sur Windows** : appuie sur la touche `Windows`, tape `PowerShell`, puis `Entrée`.
>
> Tu vas voir une fenêtre avec du texte. C'est là que tu colles les commandes ci-dessous.
> **Copie, colle, appuie sur `Entrée`.** C'est tout.

### Ce qu'il te faut avant

- **Claude Code** installé. Si ce n'est pas fait : [claude.com/code](https://claude.com/code).
- C'est tout. Pas de compte à créer ailleurs, rien à payer, aucune clé à configurer.

### Étape 1 — Télécharger

Colle ça dans le Terminal, puis `Entrée` :

```bash
git clone https://github.com/marty-ds/AI-Marketing.git
```

**Ce que tu dois voir :** des lignes qui défilent, puis `done.` à la fin.

### Étape 2 — Entrer dans le dossier

```bash
cd AI-Marketing
```

**Ce que tu dois voir :** rien. C'est normal. Le texte à gauche de ton curseur change juste.

### Étape 3 — Installer

```bash
./install.sh
```

**Ce que tu dois voir :**

```
Installation vers /Users/toi/.claude/skills

  installé marketing-audit-4p
  installé marketing-audit-stp
  ... (18 lignes au total)

18 skill(s) installé(s), 0 ignoré(s).
```

### Étape 4 — Redémarrer

Ferme Claude Code et rouvre-le. **C'est fini.**

Pour vérifier que ça marche, écris à ton assistant :

> Fais-moi le SWOT d'une boulangerie artisanale qui ne vend rien le matin.

S'il te pose des questions sur ta problématique avant de répondre, c'est que tout fonctionne.

### Pour mettre à jour plus tard

```bash
git pull
```

Les 18 skills se mettent à jour d'un coup. Rien d'autre à faire.

### Pour désinstaller

```bash
./install.sh --uninstall
```

---

## Quel skill pour quelle question ?

Tu n'as pas besoin de retenir ce tableau. **L'IA choisit toute seule.** Il est là si tu veux
comprendre ce qu'il y a dans la boîte.

### Je ne sais pas par où commencer

| Ma question | Le skill qui répond |
|---|---|
| « Aide-moi, je ne sais pas quoi faire » | [`marketing-plan-complet`](skills/marketing-plan-complet) — **le chef d'orchestre**, il appelle tous les autres |
| « Quel est vraiment mon problème ? » | [`marketing-problematique`](skills/marketing-problematique) |
| « Comment interroger mes clients ? » | [`marketing-etude-de-marche`](skills/marketing-etude-de-marche) |

### Je veux comprendre mon entreprise

| Ma question | Le skill qui répond |
|---|---|
| « Ma marque est-elle bonne ? Mon nom, mon logo, ma notoriété ? » | [`marketing-marque`](skills/marketing-marque) |
| « Que fait déjà mon entreprise ? Et mes concurrents ? » | [`marketing-audit-4p`](skills/marketing-audit-4p) |
| « À qui je m'adresse aujourd'hui, sans le savoir ? » | [`marketing-audit-stp`](skills/marketing-audit-stp) |
| **« Je vends un service, pas un produit »** | [`marketing-service`](skills/marketing-service) — les **7P**, le parcours client, la qualité |

### Je veux comprendre ce qui m'entoure

| Ma question | Le skill qui répond |
|---|---|
| « Qui sont mes concurrents dangereux ? » | [`marketing-micro-environnement`](skills/marketing-micro-environnement) |
| « Mon marché est-il porteur ? Quelle est ma part de marché ? » | [`marketing-marche`](skills/marketing-marche) |
| « De quoi mon secteur aura-t-il l'air dans 5 ans ? » | [`marketing-macro-environnement`](skills/marketing-macro-environnement) |

### Je veux résumer et décider

| Ma question | Le skill qui répond |
|---|---|
| « Fais-moi un SWOT » | [`marketing-swot`](skills/marketing-swot) |
| « À qui je devrais vendre ? Fais-moi un persona » | [`marketing-ciblage-persona`](skills/marketing-ciblage-persona) |
| « Comment me différencier ? Quelle promesse ? » | [`marketing-positionnement`](skills/marketing-positionnement) |

### Je veux passer à l'action

| Ma question | Le skill qui répond |
|---|---|
| « Quel prix ? Où vendre ? Quel packaging ? » | [`marketing-mix-4p`](skills/marketing-mix-4p) |
| « Construis ma campagne de communication » | [`marketing-plan-communication`](skills/marketing-plan-communication) |
| « Mon site, mes réseaux, mes emails, mes influenceurs » | [`marketing-digital`](skills/marketing-digital) |
| « Comment être trouvé sur Google et cité par les IA ? » | [`marketing-referencement`](skills/marketing-referencement) |
| « TV, radio, affichage : quel média choisir ? » | [`marketing-medias-de-masse`](skills/marketing-medias-de-masse) |

---

## La méthode derrière tout ça

Tout part d'**une question**, jamais d'un outil.

```
   ┌──────────────────┐     ┌──────────────────┐     ┌──────────────────┐
   │ 1. PROBLÉMATIQUE │────▶│    2. ÉTUDE      │────▶│ 3. RECOMMANDA-   │
   │                  │     │                  │     │    TIONS         │
   │ Quel est le      │     │ Ce que je suis   │     │                  │
   │ constat ?        │     │      +           │     │ Stratégiques     │
   │ Quelle est la    │     │ Ce qui m'entoure │     │      puis        │
   │ question ?       │     │      ↓           │     │ opérationnelles  │
   │                  │     │     SWOT         │     │                  │
   └──────────────────┘     └──────────────────┘     └──────────────────┘
```

**Les deux règles d'or :**

1. **Chaque élément du SWOT doit répondre à la problématique.**
2. **Chaque recommandation doit sortir du SWOT.**

Si le lien casse, l'analyse ne vaut rien. Les skills vérifient ce lien à chaque étape — c'est
ce qui les rend utiles.

---

## Ça ne marche pas ?

| Le problème | La solution |
|---|---|
| **`git : command not found`** | Git n'est pas installé. Sur Mac, tape `xcode-select --install` et suis les instructions. Sur Windows, télécharge-le sur [git-scm.com](https://git-scm.com). |
| **`permission denied: ./install.sh`** | Tape `chmod +x install.sh` puis relance `./install.sh`. |
| **Les skills ne se déclenchent pas** | As-tu **redémarré** Claude Code ? C'est l'oubli le plus fréquent. |
| **`IGNORÉ` à l'installation** | Un vrai dossier du même nom existe déjà dans `~/.claude/skills/`. Supprime-le ou renomme-le, puis relance. |
| **Je veux vérifier que tout est en ordre** | Tape `./validate.sh`. Tu dois voir « 18 skill(s) valide(s), 0 erreur(s). » |

---

## D'où vient la méthode

De quatre cours de marketing, tous conservés dans [`docs/`](docs/) — texte **et** schémas
d'origine.

| Document | Ce qu'il couvre |
|---|---|
| [`docs/methode.md`](docs/methode.md) | Le marketing général : problématique, étude, SWOT, recommandations, les 4P |
| [`docs/methode-etude-de-marche.md`](docs/methode-etude-de-marche.md) | Comment mener une étude : desk, qualitatif, quantitatif |
| [`docs/methode-service.md`](docs/methode-service.md) | Le marketing de service : les 7P, le parcours client, ServQual |
| [`docs/methode-digital.md`](docs/methode-digital.md) | Le digital : site web, SEO/SEA/GEO, réseaux sociaux, influence, médias, emailing, analytics |

Les **100 schémas et tableaux** extraits des cours sont dans
[`docs/mindmap/`](docs/mindmap/), [`docs/etude/`](docs/etude/),
[`docs/service/`](docs/service/) et [`docs/digital/`](docs/digital/).

Les exemples belges du cours ont été gardés — Delhaize, Colruyt, Jupiler, Côte d'Or, HORECA,
le CIM. Ils rendent la méthode concrète. Rien n'empêche de l'appliquer ailleurs.

---

## Ce que ces skills ne font pas

- **Aucun compte, aucune clé, aucun abonnement.** Que du texte. Rien à configurer.
- **Ils ne cherchent pas les données à ta place.** Ils te disent quelles données trouver et où.
  Si ton assistant a un accès internet, il peut les chercher ; sinon, il te les demande.
- **Ils ne remplacent pas une vraie étude terrain.** Ils structurent le raisonnement autour
  d'elle.
- **Ils ne font pas d'audit technique de site.** Pour un crawl complet ou des Core Web Vitals,
  il te faut un outil dédié.

---

## Contribuer

Corrections, nouveaux skills, exemples, traductions : tout est bienvenu.
Lis [CONTRIBUTING.md](CONTRIBUTING.md).

## Licence

[MIT](LICENSE) — utilise, modifie, partage, même en commercial.
