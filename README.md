# Presentations

# Code

## To run it locally

1. Add `reveal.js` code
 
```
git submodule add https://github.com/hakimel/reveal.js/
```

2. Install the package

```
cd reveal.js
npm install
```

3. Serve presentation locally

```
npm start
## Server started http://localhost:8000
```

4. Add node_modules to .gitignore (since 09-04-2022, all `node_modules` folder are ignored by this)

```
touch .gitignore
echo 'node_modules' >> .gitignore
```

## Create presentation folder structure

1. Create folder

```
mkdir presentations
mkdir presentations/date_name
```

2. Move html file

```
mv reveal.js/index.html presentations/date_name
```

3. Modify paths inside `index.html`

* Stylesheets
    ```html
    <link rel="stylesheet" href="/reveal.js/dist/reset.css">
	<link rel="stylesheet" href="/reveal.js/dist/reveal.css">
	<link rel="stylesheet" href="/dreveal.js/ist/theme/black.css">

    <!-- Theme used for syntax highlighted code -->
    <link rel="stylesheet" href="reveal.js/plugin/highlight/monokai.css">
    ```

* Plugins
    ```html
    <script src="/reveal.js/dist/reveal.js"></script>
    <script src="/reveal.js/plugin/notes/notes.js"></script>
    <script src="/reveal.js/plugin/markdown/markdown.js"></script>
    <script src="/reveal.js/plugin/highlight/highlight.js"></script>
    ```

4. Add `index.html` at root to list and link all presentations. Simple example:

```html
<!doctype html>
<html>
	<head>
	</head>
	<body>
		<h1>List of presentations</h1>
		<ul>
			<li><a href="./presentations/presentation01/index.html">Presentation 01</a></li>
			<li><a href="./presentations/presentation02/index.html">Presentation 02</a></li>
		</ul>
	</body>
</html>
