# ForgedToFight.IO

<p align="center">
<img src="assets/images/logo_forgedtofight.io_bg-white_332x128.png" alt="Logo ForgedToFight.IO" title="ForgedToFight.IO" />
</p>

This is a community fansite for TRANSFORMERS Forged to Fight mobile game.

## The stack

* Ruby 2.4.1 : programming language
* Syro : powerful router for *Ruby* web applications
* Bootstrap 4 : CSS/JS framework
* RethinkDB : JSON document based database

## Developers resources

### Start the application

* Install bundler: `gem install bundler --no-document`
* Install required gems: `bundle install`
* Install Docker: https://docs.docker.com/engine/installation/
* Create the RethinkDB from docker image:

        mkdipr -p ${HOME}/opt/data/rethinkdb
        docker run --name rethinkdb -v "${HOME}/opt/data/rethinkdb:/data" -d rethinkdb

#### To start RethinkDB image

        docker start rethinkdb

#### To stop RethinkDB image

        docker stop rethinkdb

* Create this **.env** file in root directory and run the application with **foreman** Ruby gem : `foreman run rake nobrainer:sync_schema` and `foreman start`

        APP_COOKIE_SECRET=599fcf7e92142e1925fe3a17f43eb477c25cf6b9f677c3ff8916c2d92ff1e00977fe97cf4643632b4b70e899a752dc5ec7bb0282ea8ea319a4b019a25c54dbd4
        APP_MAX_THREADS=8
        APP_MOCK_USER=true
        APP_PORT=5000
        # APP_RETHINKDB_URL=rethinkdb://forgedtofightio_dev:forgedtofightio_dev@rethinkdb.forgedtofight.io:28015/forgedtofightio_development
        APP_SESSION_EXPIRE_AFTER=86400
        APP_WORKERS=4
        RACK_ENV=development
        RACK_MULTITHREAD=true

    __The RethinkdB IP address is autotically deducted.__

### RethinkDB account

#### Create application user in RethinkDB data explorer

##### Production database

    r.db('rethinkdb').table('users').insert({id: 'forgedtofightio', password: 'xxxxxxxxxxxxxxxxxxxxxxx'});
    r.dbCreate('forgedtofightio_production');
    r.db('forgedtofightio_production').grant('forgedtofightio', {read: true, write: true, config: true});
