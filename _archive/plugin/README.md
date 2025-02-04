# Settings

```html
<script>
	// More info about initialization & config:
	// - https://revealjs.com/initialization/
	// - https://revealjs.com/config/
	Reveal.initialize({
		// embedded: true,
		controls: true,
		controlsTutorial: true,
		// Determines where controls appear, "edges" or "bottom-right"
		controlsLayout: 'bottom-right',
		// Visibility rule for backwards navigation arrows; "faded", "hidden" or "visible"
		controlsBackArrows: 'visible',
		// Display a presentation progress bar
		progress: true,
		slideNumber: 'c/t',
		hash: true,
		
		disableLayout: false,
		display: 'flex',
		center: true,

		// Custom scaling wide macbook
		// width: 1440,
		// height: 900,
		
		// Custom scaling 4/3 ipad
		width: 1440,
		height: 1020,
		margin: 0.04,
		minScale: 0.1,
		maxScale: 1.0,

		math: {
	      mathjax: 'https://cdn.jsdelivr.net/gh/mathjax/mathjax@2.7.8/MathJax.js',
	      config: 'TeX-AMS_HTML-full',
	      // pass other options into `MathJax.Hub.Config()`
	      TeX: { Macros: { RR: "{\\bf R}" } }
			},

			chalkboard: {
	        boardmarkerWidth: 3,
	        chalkWidth: 3,
	        chalkEffect: 0,
	        src: "plugin/chalkboard/chalkboard.json",
	        readOnly: undefined,
	        fullscreenButton: { left: "60px", bottom: "30px", top: "auto", right: "auto" },
	        toggleChalkboardButton: { left: "90px", bottom: "30px", top: "auto", right: "auto" },
	        toggleNotesButton: { left: "120px", bottom: "30px", top: "auto", right: "auto" },
	        downloadButton: { left: "150px", bottom: "30px", top: "auto", right: "auto" },
	        transition: 800,
	        theme: "whiteboard",
	        background: [ 'rgba(127,127,127,.1)' , path + 'img/whiteboard.png' ],
	        grid: { color: 'rgba(50,50,10,0.1)', distance: 50, width: 1},
	        eraser: { src: path + 'img/sponge.png', radius: 20},
	        boardmarkers : [
	                { color: 'rgba(100,100,100,1)', cursor: 'url(' + path + 'img/boardmarker-black.png), auto'},
	                { color: 'rgba(30,144,255, 1)', cursor: 'url(' + path + 'img/boardmarker-blue.png), auto'},
	                { color: 'rgba(220,20,60,1)', cursor: 'url(' + path + 'img/boardmarker-red.png), auto'},
	                { color: 'rgba(50,205,50,1)', cursor: 'url(' + path + 'img/boardmarker-green.png), auto'},
	                { color: 'rgba(255,140,0,1)', cursor: 'url(' + path + 'img/boardmarker-orange.png), auto'},
	                { color: 'rgba(150,0,20150,1)', cursor: 'url(' + path + 'img/boardmarker-purple.png), auto'},
	                { color: 'rgba(255,220,0,1)', cursor: 'url(' + path + 'img/boardmarker-yellow.png), auto'}
	        ],
	        chalks: [
	                { color: 'rgba(255,255,255,0.5)', cursor: 'url(' + path + 'img/chalk-white.png), auto'},
	                { color: 'rgba(96, 154, 244, 0.5)', cursor: 'url(' + path + 'img/chalk-blue.png), auto'},
	                { color: 'rgba(237, 20, 28, 0.5)', cursor: 'url(' + path + 'img/chalk-red.png), auto'},
	                { color: 'rgba(20, 237, 28, 0.5)', cursor: 'url(' + path + 'img/chalk-green.png), auto'},
	                { color: 'rgba(220, 133, 41, 0.5)', cursor: 'url(' + path + 'img/chalk-orange.png), auto'},
	                { color: 'rgba(220,0,220,0.5)', cursor: 'url(' + path + 'img/chalk-purple.png), auto'},
	                { color: 'rgba(255,220,0,0.5)', cursor: 'url(' + path + 'img/chalk-yellow.png), auto'}
	        ]
	    },

		// Learn about plugins: https://revealjs.com/plugins/
		plugins: [ RevealMarkdown, RevealHighlight, RevealNotes, RevealMenu, RevealZoom, RevealSearch, RevealMath, RevealChalkboard, PdfExport ],

		dependencies: [
			{ src: '/plugin/Reveal.js-Title-Footer/plugin/title-footer/title-footer.js', async: true, callback: function() { title_footer.initialize(null ,null); } },
			{ src: '/plugin/toc-progress/toc-progress.js', async: true, callback: function() { toc_progress.initialize('scroll', null, 'body'); toc_progress.create(); } }],
		menu: {
		    side: 'left',
		    width: 'normal',
		    numbers: false,
		    titleSelector: 'h1, h2, h3, h4, h5, h6',
		    useTextContentForMissingTitles: false,
		    hideMissingTitles: false,
		    markers: true,
		    custom: false,
		    // Specifies the themes that will be available in the themes
		    // menu panel. Set to 'true' to show the themes menu panel
		    // with the default themes list. Alternatively, provide an
		    // array to specify the themes to make available in the
		    // themes menu panel, for example...
		    //
		    // [
		    //     { name: 'Black', theme: 'dist/theme/black.css' },
		    //     { name: 'White', theme: 'dist/theme/white.css' },
		    //     { name: 'League', theme: 'dist/theme/league.css' },
		    //     {
		    //       name: 'Dark',
		    //       theme: 'lib/reveal.js/dist/theme/black.css',
		    //       highlightTheme: 'lib/reveal.js/plugin/highlight/monokai.css'
		    //     },
		    //     {
		    //       name: 'Code: Zenburn',
		    //       highlightTheme: 'lib/reveal.js/plugin/highlight/zenburn.css'
		    //     }
		    // ]
		    //
		    // Note: specifying highlightTheme without a theme will
		    // change the code highlight theme while leaving the
		    // presentation theme unchanged.
		    themes: [
		        {
		           name: 'Dark',
		           theme: 'css/dark.css',
		           highlightTheme: 'css/dracula.css'
		        },
		        {
		           name: 'Bright',
		           theme: 'css/bright.css',
		           highlightTheme: 'css/github.css'
		        }
 				],
		    themesPath: 'css/',
		    transitions: true,
		    openButton: true,
		    openSlideNumber: false,
		    keyboard: true,
		    sticky: false,
		    autoOpen: true,
		    delayInit: false,
		    openOnInit: false,
		    loadIcons: true
		}

	});

	Reveal.configure({ 
		pdfSeparateFragments: false,
		pdfMaxPagesPerSlide: 1
	});
	
</script>
```