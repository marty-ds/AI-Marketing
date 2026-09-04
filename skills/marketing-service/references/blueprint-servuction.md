# La servuction et le blueprint

Comment un service se produit, et comment le mettre à plat pour l'améliorer.

---

## La servuction — les 4 interactions

La **servuction** est la production du service. Elle repose sur 4 interactions.

```
   BACK-OFFICE          FRONT-OFFICE
  ┌─────────────┐    ┌──────────────────┐
  │             │    │  Environnement   │◀────────┐
  │Organisation │◀──▶│    matériel      │         │    ┌──────────┐
  │  invisible  │    │                  │◀───────────▶ │ Client A │
  │             │    │   Personnel      │         │    └──────────┘
  │             │◀──▶│   en contact     │◀────────┤         ▲
  └─────────────┘    └──────────────────┘         │         │ 4
                                                  │         ▼
                                                  │    ┌──────────┐
                                                  └───▶│ Client B │
                                                       └──────────┘
```

| # | Interaction | Zone | Ce qu'il faut savoir |
|---|---|---|---|
| **1** | Entre le **client** et le **personnel en contact** | **Front office — high contact** | C'est le cœur du service. La relation est une partie du produit. |
| **2** | Entre le **client**, le **personnel en contact** et l'**environnement matériel** | **Front office — low contact** | Environnement matériel = agencement, décor, localisation. Importance des technologies : commande en ligne, chatbot, application mobile. |
| **3** | Le rôle de l'**organisation interne**, invisible | **Back office** | Finances, comptabilité, stratégie, management. Le client ne la voit pas, mais elle décide de tout. |
| **4** | Entre **clients** | Front office | Les autres clients influencent le comportement et l'attitude d'un client. L'entreprise peut, dans une certaine mesure, le contrôler. |

**Comment agir sur la 4ᵉ interaction :** adapter les process, la capacité de production, ou le
où et comment on délivre le service. *Exemples : séparer les familles des couples au
restaurant, créer des créneaux « calmes », organiser la file d'attente.*

---

## Le niveau de contact

| | High contact | Low contact |
|---|---|---|
| **Conscience, intérêt / désir** | Visite des lieux, exploration, observation, rencontre de personnes | Pas de contact physique |
| **Action** | Présence sur le lieu de service | Pas de présence |
| **Fidélisation, recommandation** | Gestion de la qualité, gestion des plaintes | Gestion de la qualité, gestion des plaintes |

En low contact, la qualité perçue repose presque entièrement sur l'**environnement matériel**
et le **process** — puisqu'il n'y a personne pour rattraper une mauvaise expérience.

---

## Le blueprint

> Le blueprint permet de **concevoir et/ou améliorer le service en partant du parcours client**.
> Le but : optimiser l'organisation pour délivrer un service optimal.

### Comment le lire

Quatre bandes, séparées par la **ligne de visibilité** — ce que le client voit, et ce qu'il ne
voit pas.

```
Actions et points de contact du client
   Faire la     Email de      Aller à      Arriver à la     S'enregistrer   Récupérer
   réservation  confirmation  l'hôtel      réception                        les bagages
        │            │            │             │                │              │
════════╪════════════╪════════════╪═════════════╪════════════════╪══════════════╪═══ LIGNE
        │            │            │             │                │              │  DE VISIBILITÉ
Front office                              Accueillir et      Procéder à     Livrer les
                                          prendre les       l'enregistre-   bagages
                                          bagages            ment
        │                                       │                │
Back office                                     └───▶ Apporter les bagages à la chambre
   Enregistrer la réservation
        │            │                                           │
Fonctions support
   Système de   Envoi automatique                          Système de
   réservation  d'une newsletter                           réservation
```

### Les 3 usages

**1. Visualiser et reconnaître les points potentiels de DÉFAILLANCE**

Ils ont un impact négatif sur l'expérience client. Il faut les repérer **et prévoir un plan B**.

*Exemple : le système de réservation tombe → procédure papier + appel de confirmation.*

**2. Repérer les points d'ATTENTE du client**

Prévoir des ressources additionnelles pour éviter un temps d'attente trop long.

*Exemple : pic d'arrivées entre 17h et 19h → deux personnes à la réception sur ce créneau.*

**3. Établir les STANDARDS du service**

Des normes explicites, contrôlées régulièrement.

*Exemples de standards : nombre de sonneries avant décrochage, nombre de jours de traitement
d'une réclamation, nombre de minutes pour servir un plat.*

### Un outil interne aussi

Le blueprint est également un **outil de communication et d'alignement interne**, clé à l'ère
de la digitalisation et de l'IA : il montre à chaque service ce que son travail produit du côté
du client.

---

## Construire un blueprint — la marche à suivre

1. **Partir du parcours client déjà cartographié.** Reprends les phases et les étapes.
2. **Remplir la bande « actions du client »** — une colonne par étape.
3. **Tracer la ligne de visibilité.**
4. **Remplir le front office** — ce que le personnel fait devant le client.
5. **Remplir le back office** — ce qui se passe sans lui.
6. **Remplir les fonctions support** — les systèmes qui rendent tout possible.
7. **Marquer les défaillances possibles** avec un symbole, et écrire le plan B de chacune.
8. **Marquer les points d'attente** et dire quelle ressource les absorbe.
9. **Écrire un standard chiffré** pour chaque étape critique.

## Le tableau à produire

```markdown
| Étape client | Front office | Back office | Support | Défaillance possible | Plan B | Standard |
|---|---|---|---|---|---|---|
| Réserve en ligne | — | Enregistre la résa | Système de résa | Système hors service | Résa par téléphone | Confirmation < 2 min |
| Arrive | Accueille, prend les bagages | — | — | File d'attente | 2e personne 17h-19h | Prise en charge < 3 min |
```

## Le piège de la standardisation

Standardiser améliore la fiabilité et réduit l'inconstance de la qualité. Mais le problème
connu est le **manque de fantaisie et de spontanéité**. Standardise ce qui doit être fiable
(les délais, la sécurité, les réclamations) et laisse libre ce qui doit être humain (l'accueil,
le conseil).
