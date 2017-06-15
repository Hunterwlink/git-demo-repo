![logo](https://s3.amazonaws.com/bottega-devcamp/bottega-devcamp.png)

## Dev camp portfoilo application 

### Instructions to enter into the bash shell

To startup the Postgres database, the command is:

```
sudo service postgresql start
```

To generate a new rails application, the command is:

```
rails new AppName -T --database=postgresql
```

Change into the app:

```
cd AppName
```

Create and migrate the database:

```
rails db:create && rails db:migrate
```

To run the Rails server on C9, the command is:

```
rails s -b $IP -p $PORT
```

In order to view your page that you are working on while in C9, after starting the server, you’ll then use the preview button on the top bar to be able to view the page.

For more information on how to use Cloud9, visit http://docs.c9.io for our documentation. If you want, you can also go watch some training videos at
http://www.youtube.com/user/c9ide.

Good luck with the coding!