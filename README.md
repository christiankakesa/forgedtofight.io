# ForgedToFight.IO

This is an unofficial website about TRANSFORMERS Forged to Fight mobile game.

## User

### My Bots

Authenticated user could list and configure his bot list with bot's capabilities. Update is manual.

## Features

### Arena Score

Results of arena 3 and 4 stars.

### Botodex

Database and search engine of bots and mods.

## About

This website is built by @fenick79 a #ForgedToFight gamer.

### Our stack

 * Ruby 2.4.x : programming language
 * Syro : powerful router for web applications
 * Twitter Bootstrap : CSS framework
 * RethinkDB : JSON document based database

## Resources 

### RethinkDB account

#### Create application user in RethinkDB data explorer

##### Development database

    r.db('rethinkdb').table('users').insert({id: 'forgedtofightio_dev', password: 'forgedtofightio_dev'});
    r.dbCreate('forgedtofightio_development');
    r.db('forgedtofightio_development').grant('forgedtofightio_dev', {read: true, write: true, config: true});

##### Production database

    r.db('rethinkdb').table('users').insert({id: 'forgedtofightio', password: 'xxxxxxxxxxxxxxxxxxxxxxx'});
    r.dbCreate('forgedtofightio_production');
    r.db('forgedtofightio_production').grant('forgedtofightio', {read: true, write: true, config: true});
