# Presentations

All presentations are created using the [reveal.js](https://revealjs.com) framework and can be found here:

[jwarz.github.io/presentations/](https://jwarz.github.io/presentations/)

# Code

To recreate this setup do the following steps:

## Installation (including a local web server)

1. Add `reveal.js` to your repo
 
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

## Serve presentations from external markdown files

It's possible and often times more convenient to write presentation content using Markdown. You can write your content as a separate file and have reveal.js load it at runtime.

Inside the `index.html` replace

```html
<div class="reveal">
    <div class="slides">
        <section>Slide 1</section>
        <section>Slide 2</section>
    </div>
</div>
```

with

```html
<div class="reveal">
    <div class="slides">
        <section data-markdown="slides.md"
                    data-separator="^\n----  ----\n$"
                    data-separator-vertical="^\n----\n$"
                    data-separator-notes="^Note:"
                    data-charset="utf-8">
            <!--
            Note that Windows uses `\r\n` instead of `\n` as its linefeed character.
            For a regex that supports all operating systems, use `\r?\n` instead of `\n`.
            -->
        </section>
    </div>
</div>
```

## Create presentation folder structure

It is convenient to store all presentation inside one folder.

1. Create folder

```
mkdir presentations
mkdir presentations/date_name
```

2. Move `index.html` (and `slides.md`)

```
mv reveal.js/index.html presentations/date_name
```

3. Modify paths inside `index.html`

If not served from `https://username.github.io/` but from `https://username.github.io/repo/` the html base tag is needed to have the proper file pathes. This line has to be added inside the <head> 

```html
<base href="/repo_name/">
```

Alternatively, point point to tge root folder two levels up from the current folder:

* Stylesheets
    ```html
    <link rel="stylesheet" href="../../reveal.js/dist/reset.css">
	<link rel="stylesheet" href="../../reveal.js/dist/reveal.css">
	<link rel="stylesheet" href="../../dreveal.js/ist/theme/black.css">

    <!-- Theme used for syntax highlighted code -->
    <link rel="stylesheet" href="../../reveal.js/plugin/highlight/monokai.css">
    ```

* Plugins
    ```html
    <script src="../../reveal.js/dist/reveal.js"></script>
    <script src="../../reveal.js/plugin/notes/notes.js"></script>
    <script src="../../reveal.js/plugin/markdown/markdown.js"></script>
    <script src="../../reveal.js/plugin/highlight/highlight.js"></script>
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
```

## Customize presentations

1. Create folder for CSS files and plugins

```
mkdir css
mkdir plugin
```

2. Add plugins

As submodules

```
cd plugin
git submodule add https://github.com/e-gor/Reveal.js-Title-Footer/
git submodule add https://github.com/McShelby/reveal-pdfexport/
git submodule add https://github.com/denehyg/reveal.js-menu/
```

Or manually (modified)

* [Chalkboard](https://github.com/rajgoel/reveal.js-plugins/tree/master/chalkboard) by [rajgoel](https://github.com/rajgoel/)
* [TOC-progress](https://github.com/e-gor/Reveal.js-TOC-Progress/) by [e-gor](https://github.com/e-gor/)

3. Add plugin pathes to `index.html`

```html
<!-- Original -->
<script src="../../reveal.js/dist/reveal.js"></script>
<script src="../../reveal.js/plugin/notes/notes.js"></script>
<script src="../../reveal.js/plugin/markdown/markdown.js"></script>
<script src="../../reveal.js/plugin/highlight/highlight.js"></script>
<script src="../../reveal.js/plugin/zoom/zoom.js"></script>
<script src="../../reveal.js/plugin/search/search.js"></script>
<script src="../../reveal.js/plugin/math/math.js"></script>

<!-- Modified -->
<script src="../../plugin/reveal.js-menu/menu.js"></script>
<script src="../../plugin/chalkboard/plugin.js"></script>
<script src="../../plugin/reveal-pdfexport/pdfexport.js"></script>
<script src="../../plugin/chalkboard/screenfull.min.js"></script>
```

4. Add plugins to the `Reveal.initialize` function inside `index.html`
 
```html
<script>
    // More info about initialization & config:
    // - https://revealjs.com/initialization/
    // - https://revealjs.com/config/
    Reveal.initialize({
        hash: true,

        // Learn about plugins: https://revealjs.com/plugins/
        plugins: [ RevealMarkdown, RevealHighlight, RevealNotes, RevealMenu, RevealZoom, RevealSearch, RevealMath, RevealChalkboard, PdfExport ],

        dependencies: [
            { src: 'plugin/Reveal.js-Title-Footer/plugin/title-footer/title-footer.js', async: true, callback: function() { title_footer.initialize(null ,null); } },
            { src: 'plugin/toc-progress/toc-progress.js', async: true, callback: function() { toc_progress.initialize('scroll', null, 'body'); toc_progress.create(); } }]
    });
</script>
```

Include settings as well (see /plugins/README.md) and stylesheets for plugins