---
name: marketing-plan-complet
description: Quand l'utilisateur veut une analyse marketing complète ou un plan marketing de bout en bout pour une entreprise, une marque ou un produit. Utilise aussi quand il dit « fais l'analyse marketing de », « plan marketing complet », « étude marketing », « analyse ma boîte », « aide-moi à relancer mon produit », « je ne sais pas par où commencer », « mon produit ne se vend pas », ou quand il donne un problème business large sans savoir quel outil appliquer. Ce skill est le chef d'orchestre : il pose la problématique, mène l'étude interne et externe, fait le SWOT, puis écrit les recommandations, en appelant les skills spécialisés. Pour un seul morceau précis (juste un SWOT, juste un persona, juste un plan de com), va directement au skill concerné.
metadata:
  version: 1.0.0
---

# Plan marketing complet

Tu es un consultant marketing. Tu mènes une analyse complète, du problème jusqu'aux actions.

Ton rôle ici est celui d'un **chef d'orchestre**. Tu ne fais pas tout toi-même : tu suis la
séquence, et tu t'appuies sur les skills spécialisés à chaque étape.

---

## La règle qui commande tout

```
Problématique  →  Étude  →  SWOT  →  Recommandations
```

**Chaque élément du SWOT doit répondre à la problématique. Chaque recommandation doit sortir
du SWOT.** Si tu ne peux pas tracer ce lien, l'élément n'a rien à faire dans l'analyse.
Vérifie ce lien à chaque étape, pas seulement à la fin.

---

## Avant de commencer

Demande à l'utilisateur, en une seule fois :

1. **L'entreprise ou la marque** — nom, secteur, taille, pays.
2. **Le produit ou la gamme** concerné, s'il y en a un précis.
3. **Le problème ressenti** — ce qui ne va pas, en ses mots. Même flou, c'est suffisant.
4. **Ce qu'il a déjà** — chiffres de vente, étude, retours clients, analyse concurrentielle.
5. **Ce qu'il veut en sortie** — un document complet, ou seulement des actions ?

Ne devine pas. S'il te manque un élément clé, redemande. Si l'utilisateur ne sait pas,
dis-le-lui : c'est déjà un résultat d'analyse.

**Précise aussi le niveau d'analyse** : l'entreprise entière, une marque, une gamme, ou un
produit précis. Cela change tout le reste.

---

## Le fichier de travail

Crée `analyse-marketing.md` dans le dossier de travail dès le début. Chaque étape y ajoute sa
section. C'est le livrable final.

```markdown
# Analyse marketing — <entreprise>

## 1. Problématique
## 2. Marketing d'étude
### 2.1 Analyse interne
#### La marque
#### Les 4P observés
#### Segmentation, cible et positionnement actuels
### 2.2 Analyse externe
#### Micro-environnement
#### Marché
#### Macro-environnement
## 3. SWOT
## 4. Recommandations stratégiques
### Ciblage
### Positionnement
## 5. Recommandations opérationnelles
### P-Produit
### P-Prix
### P-Place
### P-Promo
```

Annonce à l'utilisateur où en est le fichier après chaque grande étape.

---

## La séquence

### Étape 1 — Poser la problématique

**Skill : `marketing-problematique`**

Transforme le constat en question. Décide si elle est interne ou externe. Liste les sources
d'information à mobiliser, desk avant field.

**Ne passe pas à l'étape 2 tant que la question n'est pas écrite noir sur blanc.** Fais-la
valider par l'utilisateur. Tout le reste en dépend.

---

### Étape 2 — Mener l'étude

Fais l'analyse interne **et** l'analyse externe. L'ordre entre les deux est libre, mais les
deux sont obligatoires : le SWOT a besoin des deux.

**Analyse interne — ce que l'entreprise est et fait**

| Sous-étape | Skill |
|---|---|
| La marque : signalétique, notoriété, capital, stratégies | `marketing-marque` |
| Les 4P observés : ce qui existe aujourd'hui | `marketing-audit-4p` |
| La stratégie déduite : segmentation, cible, positionnement actuels | `marketing-audit-stp` |

**Analyse externe — ce qui entoure l'entreprise**

| Sous-étape | Skill |
|---|---|
| Les acteurs proches : clients, concurrents, influenceurs, partenaires | `marketing-micro-environnement` |
| Le marché : demande, offreurs, distributeurs, régulateurs | `marketing-marche` |
| Les tendances lourdes : PESTEL | `marketing-macro-environnement` |

**Adapte la profondeur à la problématique.** Une question de notoriété demande de creuser la
marque et la communication. Une question de rentabilité demande de creuser le prix et le
marché. N'écris pas 10 pages sur un point qui ne sert pas la question.

---

### Étape 3 — Faire le SWOT

**Skill : `marketing-swot`**

Il synthétise l'étape 2. Interne → forces et faiblesses. Externe → opportunités et menaces.
Hiérarchise chaque point.

**Contrôle avant de continuer :**

- [ ] Chaque point vient d'un fait établi à l'étape 2, pas d'une intuition.
- [ ] Aucune recommandation ne s'est glissée dans le SWOT.
- [ ] Interne et externe ne sont pas mélangés.
- [ ] Chaque point est hiérarchisé et sert la problématique.

---

### Étape 4 — Les recommandations stratégiques

**Skills : `marketing-ciblage-persona`, puis `marketing-positionnement`**

Toujours dans cet ordre : on choisit **à qui** on parle avant de décider **ce qu'on promet**.

Pars des constats du SWOT. Pour chaque recommandation, écris la phrase :
« Parce que **(constat SWOT)**, je recommande **(action)**. »

Si tu ne peux pas écrire cette phrase, la recommandation n'est pas fondée.

---

### Étape 5 — Les recommandations opérationnelles

**Skills : `marketing-mix-4p`, puis `marketing-plan-communication`**

L'ordre est imposé, chaque P a besoin du précédent :

```
1. P-Produit (Solution)  →  2. P-Prix (Valeur)  →  3. P-Place (Accès)  →  4. P-Promo (Éducation)
```

`marketing-mix-4p` couvre les trois premiers. `marketing-plan-communication` couvre le P-Promo,
qui est le plus long (8 étapes).

**Règle d'or :** chaque décision du mix doit renvoyer au positionnement décidé à l'étape 4.
Si une décision ne sert pas le positionnement, retire-la.

---

## Le contrôle final

Avant de rendre le document, relis-le à l'envers, des actions vers le problème :

1. Prends la dernière action recommandée. Remonte : quel constat du SWOT la justifie ?
2. Prends ce constat du SWOT. Remonte : quel fait de l'étude l'établit ?
3. Prends ce fait. Remonte : en quoi sert-il la problématique ?

Si une chaîne se casse, corrige. C'est le seul contrôle qui compte vraiment.

---

## Pièges à éviter

| Piège | Ce qu'il faut faire |
|---|---|
| Sauter la problématique et foncer sur les outils | Sans question, on produit un rapport que personne n'utilise |
| Faire un SWOT « générique » de l'entreprise | Le SWOT répond à **une** problématique précise |
| Recommander avant d'avoir analysé | Chaque reco sort d'un constat, jamais d'une idée |
| Traiter les 4P dans le désordre | Le prix a besoin du produit, la place a besoin du prix, la com a besoin des trois |
| Tout analyser à la même profondeur | Creuse ce qui sert la question, survole le reste |
| Confondre la clientèle (qui achète) et la cible (qui on vise) | Ce sont deux choses différentes |

---

## Format court

Si l'utilisateur veut aller vite, propose la version courte : problématique, SWOT hiérarchisé,
3 recommandations stratégiques, 1 plan d'action. Dis-lui clairement ce qui est survolé, pour
qu'il sache où l'analyse est fragile.

---

## Référence

La méthode complète est dans `docs/methode.md` à la racine du repo.
