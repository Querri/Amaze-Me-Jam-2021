{
  "spriteId": {
    "name": "sMushyShoot",
    "path": "sprites/sMushyShoot/sMushyShoot.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": {
    "name": "sMushyShoot",
    "path": "sprites/sMushyShoot/sMushyShoot.yy",
  },
  "persistent": false,
  "parentObjectId": {
    "name": "oEnemy",
    "path": "objects/oEnemy/oEnemy.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":7,"eventType":7,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":0,"value":"160","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shootCountdownRate","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"shootCountdownRate","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shootCountdown","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"1000","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shootDistance","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [
    {"propertyId":{"name":"canMove","path":"objects/oEnemy/oEnemy.yy",},"objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"value":"0","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"walkSpeed","path":"objects/oEnemy/oEnemy.yy",},"objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"value":"0","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
    {"propertyId":{"name":"grav","path":"objects/oEnemy/oEnemy.yy",},"objectId":{"name":"oEnemy","path":"objects/oEnemy/oEnemy.yy",},"value":"0","resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMOverriddenProperty",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Enemies.yy",
  },
  "resourceVersion": "1.0",
  "name": "oMushyShoot",
  "tags": [],
  "resourceType": "GMObject",
}