---
name: marketing-plan-complet
description: Quand l'utilisateur veut une analyse marketing complète ou un plan marketing de bout en bout pour une entreprise, une marque, un produit ou un service. Utilise aussi quand il dit « fais l'analyse marketing de », « plan marketing complet », « étude marketing », « analyse ma boîte », « aide-moi à relancer mon produit », « je ne sais pas par où commencer », « mon produit ne se vend pas », « je lance mon activité », ou quand il donne un problème business large sans savoir quel outil appliquer. Ce skill est le chef d'orchestre : il demande le site web, distingue produit et service, pose la problématique, mène l'étude interne et externe, fait le SWOT, puis écrit les recommandations et le plan digital, en appelant les 17 autres skills. Pour un seul morceau précis (juste un SWOT, juste un persona, juste un plan de com), va directement au skill concerné.
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
3. **Le site web — l'adresse, s'il y en a un.** Et les comptes sur les réseaux sociaux.
4. **Le problème ressenti** — ce qui ne va pas, en ses mots. Même flou, c'est suffisant.
5. **Ce qu'il a déjà** — chiffres de vente, étude, retours clients, analyse concurrentielle.
6. **Ce qu'il veut en sortie** — un document complet, ou seulement des actions ?

Ne devine pas. S'il te manque un élément clé, redemande. Si l'utilisateur ne sait pas,
dis-le-lui : c'est déjà un résultat d'analyse.

**Précise aussi le niveau d'analyse** : l'entreprise entière, une marque, une gamme, ou un
produit précis. Cela change tout le reste.

### Le site web — pourquoi le demander en premier

Si l'utilisateur donne une adresse, **va la voir avant de poser d'autres questions**. Le site
répond tout seul à une grande partie de l'analyse interne, et il évite de faire perdre du
temps à l'utilisateur.

| Ce que tu regardes sur le site | Ce que ça remplit dans l'analyse |
|---|---|
| Le logo, les couleurs, le slogan, la typographie | La **signalétique de marque** → `marketing-marque` |
| La page « À propos », l'histoire racontée | Le **storytelling** → `marketing-marque` |
| Les fiches produits, les prix affichés, la gamme | Le **P-Produit** et le **P-Prix** → `marketing-audit-4p` |
| Les points de vente, les options de livraison | Le **P-Place** |
| Le ton, les visuels, les personnes montrées | La **cible** et le **positionnement** → `marketing-audit-stp` |
| Les mentions légales, les avis, les certifications | La **crédibilité** → EEAT |
| La qualité mobile, la vitesse, la clarté | L'**UX** → `marketing-digital` |

**S'il n'y a pas de site**, c'est un constat en soi. Note-le : c'est très souvent une
**faiblesse** dans le SWOT, et une recommandation dans le plan digital.

**S'il y a un site**, prévois trois passages plus tard :

- `marketing-digital` pour l'UX et la mesure,
- `marketing-referencement` pour la visibilité sur Google et dans les IA,
- `marketing-plan-communication` pour la cohérence avec le reste.

---

## Produit ou service ? La question qui change le parcours

Pose-la tout de suite. Elle décide de la suite de l'analyse.

| | Produit physique | **Service** |
|---|---|---|
| **Signes** | On l'emballe, on le stocke, on le transporte | Le client est présent, rien ne se stocke, le personnel fait partie du produit |
| **Exemples** | Alimentaire, cosmétique, mobilier, textile | Restaurant, hôtel, salon, cabinet, agence, coach, assurance, formation, transport |
| **Le mix** | **4P** | **7P** — les 4P plus Physical evidence, Process, Personnel |
| **Le skill du mix** | `marketing-audit-4p` puis `marketing-mix-4p` | **`marketing-service`** |
| **En plus** | — | Parcours client, servuction, blueprint, ServQual |

**Beaucoup d'entreprises font les deux.** Dans ce cas, dis laquelle domine, et traite l'autre
en second.

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
### (Service uniquement) P-Physical evidence, P-Process, P-Personnel
## 6. Plan digital
### Site web
### Référencement
### Canaux et contenu
### Mesure
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

**Si l'utilisateur doit vraiment récolter des données** — préparer des entretiens, monter un
questionnaire, construire un tableau méthodologique — passe par `marketing-etude-de-marche`.

---

### Étape 2 — Mener l'étude

Fais l'analyse interne **et** l'analyse externe. L'ordre entre les deux est libre, mais les
deux sont obligatoires : le SWOT a besoin des deux.

**Analyse interne — ce que l'entreprise est et fait**

| Sous-étape | Skill |
|---|---|
| La marque : signalétique, notoriété, capital, stratégies | `marketing-marque` |
| Le mix observé — **produit** : ce qui existe aujourd'hui | `marketing-audit-4p` |
| Le mix observé — **service** : les 7P, le parcours client, la qualité | `marketing-service` |
| La stratégie déduite : segmentation, cible, positionnement actuels | `marketing-audit-stp` |
| Le digital existant : site, réseaux, emailing, mesure | `marketing-digital` |
| La visibilité en recherche : Google et IA | `marketing-referencement` |

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

L'ordre est imposé, chaque P a besoin du précédent :

```
1. P-Produit (Solution)  →  2. P-Prix (Valeur)  →  3. P-Place (Accès)  →  4. P-Promo (Éducation)
```

| Cas | Skills à utiliser |
|---|---|
| **Produit physique** | `marketing-mix-4p` pour les 3 premiers P, puis `marketing-plan-communication` pour le P-Promo |
| **Service** | `marketing-service` pour les **7P**, puis `marketing-plan-communication` pour le P-Promo |

Le P-Promo est le plus long : 8 étapes à lui seul.

**Règle d'or :** chaque décision du mix doit renvoyer au positionnement décidé à l'étape 4.
Si une décision ne sert pas le positionnement, retire-la.

---

### Étape 6 — Le plan digital

À faire **après** le mix, jamais avant. La communication fait connaître ce qui existe déjà.

| Sous-étape | Skill | Quand c'est utile |
|---|---|---|
| Le site, le contenu, les réseaux, l'emailing, la mesure | `marketing-digital` | Presque toujours |
| Le référencement : SEO, SEA, GEO | `marketing-referencement` | Dès qu'il y a un site, ou qu'on veut être trouvé |
| Les médias de masse et le plan média | `marketing-medias-de-masse` | Quand il y a un budget publicitaire |

**Si l'utilisateur a donné un site au départ**, c'est ici qu'on l'exploite pour de bon : UX,
référencement, cohérence du message, mesure.

**S'il n'a pas de site**, dis clairement si en créer un fait partie des recommandations — et
pourquoi.

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
| Oublier de demander le site web | Il répond seul à une grande partie de l'analyse interne |
| Traiter un service en 4P | Un service se travaille en **7P** → `marketing-service` |
| Faire le plan digital avant le mix | La com fait connaître ce qui existe déjà |

---

## Format court

Si l'utilisateur veut aller vite, propose la version courte : problématique, SWOT hiérarchisé,
3 recommandations stratégiques, 1 plan d'action. Dis-lui clairement ce qui est survolé, pour
qu'il sache où l'analyse est fragile.

---

## Les 18 skills, d'un coup d'œil

| Moment | Skills disponibles |
|---|---|
| **Cadrer** | `marketing-problematique` · `marketing-etude-de-marche` |
| **Analyse interne** | `marketing-marque` · `marketing-audit-4p` · `marketing-audit-stp` · `marketing-service` |
| **Analyse externe** | `marketing-micro-environnement` · `marketing-marche` · `marketing-macro-environnement` |
| **Synthèse** | `marketing-swot` |
| **Recommandations stratégiques** | `marketing-ciblage-persona` · `marketing-positionnement` |
| **Recommandations opérationnelles** | `marketing-mix-4p` · `marketing-service` · `marketing-plan-communication` |
| **Canaux** | `marketing-digital` · `marketing-referencement` · `marketing-medias-de-masse` |

---

## Référence

La méthode est dans `docs/` à la racine du repo : `methode.md` (marketing général),
`methode-etude-de-marche.md`, `methode-service.md`, `methode-digital.md`.
