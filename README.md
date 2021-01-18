## Getting started

Ruby version:
```
2.7.1
```

Rails version
```
6.0.3.4
```

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Create .env file and put there keys:

```
ACCESS_TOKEN: 'your_access_token'
SPACE: 'your_space'
```

Run the test suite to verify that everything is working correctly:

```
$ rails test:system
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
