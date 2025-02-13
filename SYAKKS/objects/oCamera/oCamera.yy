{
  "spriteId": null,
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
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
  ],
  "properties": [
    {"varType":4,"value":"view_camera[0];","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"cam","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":5,"value":"oPlayer","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"camFollow","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"100","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"followYOffset","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"700","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"followXOffset","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"camera_get_view_width(cam) * 0.5;","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"viewXHalf","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"camera_get_view_height(cam) * 0.5;","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"viewYHalf","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"xstart;","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"xTo","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"ystart;","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"yTo","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"200","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"cam_look_amount","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shake_lenght","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shake_magnitude","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shake_remain","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"32","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"shake_buffer","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"layer_get_id(\"Bg1\");","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"bgLayer1","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"layer_get_id(\"Bg2\");","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"bgLayer2","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"layer_get_id(\"Bg3\");","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"bgLayer3","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Control",
    "path": "folders/Objects/Control.yy",
  },
  "resourceVersion": "1.0",
  "name": "oCamera",
  "tags": [],
  "resourceType": "GMObject",
}