<style>
/*Slide Container*/
.slide-container {
    width:     100%;
    height:    100%;
    display:   flex;
    flex-wrap: wrap; /*line break the boxes*/
}

/*Slide Container TOP (for content)*/
.slide-container-top {
    display:flex;
    flex-wrap: wrap; /*line break the boxes*/
    width:100%; 
    height:78%;
}
/*Flex Direction of content boxes*/
.horizontal { flex-direction:row; }
.horizontal>*:not(:first-of-type)  { margin-left: 20px; }
.vertical { flex-direction:column; }
.vertical>*:not(:first-of-type)  { 
  margin-top: 20px; 
  padding:0 10px 0 10px !important;
}

/*Slide Container BOTTOM (for spacing)*/
.slide-container-bottom {
    flex: 1 1 10%;
    height:22%;
}
/*Content Box*/
.slide-box {
    flex: 1 0;
    overflow: auto;
    padding:10px;
}
/*Control number of rows*/
.flex-basis-40 {
  flex-basis: 40%
}
/*Control height*/
.height-50 {
  height: 40%;
}
/*Set Shadow*/
.shadow {
  box-shadow: 5px 5px 5px grey;
}
/*Settings for Inside (Text) boxes*/
.box-text {
  padding:20px;
}
/*Settings for Lists*/
.square-list {
  list-style: square !important;
}
/*Settings for Image in Box*/
.box-img {
  height: 100%;
  background-repeat: no-repeat;
  background-position: center, center;
  background-size:contain;
}
/*Optional grey frame border*/
.frame {
  border: 2px solid grey;
}
/*GRID layout*/
.grid-layout {
  height:100%;
  width:100%;
  display: grid;
  grid-template-columns: 1fr 1fr; /*layout*/
  grid-auto-rows: 1fr; /*same height*/
  grid-gap: 10px;
}
/*Show only part of headline in the TOC-Progress*/
.h-wrap {
  margin-bottom:2rem;
}
.h-wrap h2 {
  display: inline !important;
 }
</style>
<!-- .slide: class="align-center" -->
  
  <!-- .slide: data-state="no-toc-progress" --> <!-- don't show toc progress bar on this slide -->

# Digital Capital & Star Performers
<!-- .element: class="no-toc-progress" --> <!-- slide not in toc progress bar -->


<h2 style="text-align: center;">The returns to technological talent and investments in IT-related intangible capital</h2>

<br> 

[Joschka Schwarz][1]

<br> 


2020-02-11 | docsem | TU Hamburg


[![alt text](../../img/logo.png)](https://www.startupengineer.io) <!-- .element: class="logo" -->


[1]: https://www.startupengineer.io/authors/schwarz/
<!-- [2]: https://www.tuhh.de/alt/sdw -->


----  ----

<!-- .slide: class="align-center" -->

# Motivation

----

<!-- .slide: class="align-top" -->

#### Digital Revolution: The five most valuable firms in the S&P 500 are all firms from the TECH industry

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/01_motivation/nasdaq.png); height: 90%;"></div>
            <div style="text-align:center;">NASDAQ Composite Index</div>
            <div style="text-align:center;font-size:15px;">(heavily weighted towards companies in the information technology sector)</div>
          </div>
          <!--- Content Box (2) --->
          <div class="slide-box frame">
            <!--- TEXT --->
            <div class="box-text">
              <!--- List (unordered) --->
              <ul class="square-list">
                <u>Creative Destruction into the Information Age</u>
                <li><b>Tech Entrepreneurs</b> such as Page & Brin (Google) and Jobs (Apple) revolutionized the economic structures of many industries and created new markets and organisational business models in a gale of <b>creative destruction</b>. 
                <p class="reference">(Sombart, ... and Schumpeter, 1942)</p></li>
                <br>
                <u>Long-Term economic growth</u>
                <li>According to Schumpeter’s vision innovative market entry by entrepreneurs was the driving force of <b>sustained long-term economic growth</b>. In Schumpeter’s view this also destroyed the value of established companies that enjoyed some degree of monopoly power (Technology Shift).</li>
              </ul>
            </div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Much of the rise in the concentration of power in these firms has been attributed to investments related to digital technologies

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout">
        <!--- Box 1 --->
        <div class="slide-box frame">
          <div class="box-img" style="background-image: url(img/01_motivation/apple_annotated.png); display:flex; align-items:center;margin-left:20px;">
            <u>Apple</u>
          </div>
        </div>
        <!--- Box 2 --->
        <div class="slide-box frame">
            <!--- TEXT --->
            <div class="box-text" style="font-size:26px;">
              <!--- List (unordered) --->
              <ul class="square-list">
                <li><b>Digital Technologies</b> are held to be important drivers of innovation and economic growth.</li>
                <li>As the economy becomes increasingly digitized, these assets can be expected to <b>grow even further</b> in importance.</li>
                <li>Corporations must invest in <b>leading-edge digital technologies</b> to move ahead and outpace competitors.</li>
              </ul>
            </div>
        </div>
        <!--- Box 3 --->
        <div class="slide-box frame">
            <!--- TEXT --->
            <div class="box-text" style="font-size:24px;">
              <!--- List (unordered) --->
              <ul class="square-list">
                <li>Until now, it is the technology giants that have taken advantage of digital disruption by realizing <b>technology’s power</b> and developing new platform business models to unleash hidden value.</li>
                <li> Digital laggards (existing incumbents in traditional industries) pay the consequences in lost revenue and customers.</li>
              </ul>
            </div>
        </div>
        <!--- Box 4 --->
        <div class="slide-box frame">
          <div class="box-img" style="background-image: url(img/01_motivation/bei.png); display:flex; align-items:center;margin-left:20px;">
            <u>Beiersdorf</u>
          </div>
        </div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->
            
#### Differences of DIGITAL CAPITAL across firms may explain differences in performance between new digitally-focused and older firms

<div class="slide-container">
  <!--- Slide container (TOP) --->
  <div class="slide-container-top horizontal">
  <!--- Content Box (1) --->
    <div class="slide-box frame">
      <!--- IMAGE --->
      <div class="box-img" style="background-image: url(img/01_motivation/tangible.png);">
      </div>
    </div>
    <!--- Content Box (2) --->
    <div class="slide-box frame">
      <!--- TEXT --->
      <div class="box-text">
        <!--- List (unordered) --->
        <ul class="square-list">
        <li>Firms invest in both physical and digital capital to increase their capacity to produce in future years.</li>
        <li>Investments in digital capital (such as AI and ML) enable and require significant complementary investments, including business process redesign, co-invention of new products and business models, and <b>investments in human capital</b><p class="reference">Hall, 2001; Brynjolfsson et al., 2002</p>
        </li>
        <li>While these assets take time to build, the market value of firms should reflect the expected net present value of the cash flows they can generate in the future.</li>
        </ul>
        <ul class="fa-ul" style="list-style: none !important;">
        <li><i class="fa-li fa fa-exclamation" style="color:red;"></i>Measurement of the stock of digital intangibles has proven particularly elusive.</li>
        </ul>
        </div>
      </div>
    </div>
  <!--- Space Holder Box --->
  <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### How is new Digital Capital created? Open source software development has become an essential element of the digital knowledge strategy

<div class="slide-container">
  <!--- Slide container (TOP) --->
  <div class="slide-container-top vertical">
    <!--- Content Box (1) equal height turned off--->
    <div class="slide-box frame" style="flex:0 0 25%">
      <!--- IMAGE --->
      <div class="box-img" style="background-image: url(img/01_motivation/social_coding.png);">
      </div>
    </div>
    <!--- Content Box (2) --->
      <div class="slide-box frame">
        <!--- TEXT --->
        <div class="box-text">
        <ul class="square-list">
        <li>All new resources, including <b>Digital Capital / Knowledge</b>‚ are created through two generic processes: <b>Combination</b> and <b>Exchange</b>. <span class="reference">Schumpeter, (1934)</span></li>
        <li>Developers who participate on multiple projects create ties (social capital) among projects and facilitate access to those projects’ resources. This enables the development of <b>digital capital</b> in the form of new or improved products or processes. <span class="reference">Nahapiet and Ghoshal, (1998)</span></li>
        <li>Many firms (such as IBM, Microsoft, and Facebook) are actively engaging in open platforms to source new knowledge, identify innovations, and create new business value. <span class="reference">Santos et al., (2013)</span></li>
        <li>The Open Source Services Market is predicted to grow at a CAGR of <span>&#126;</span>22% with a value expecting to reach <b>$67 billion</b> by 2026. <span class="reference">Statista, (2021)</span></li>
        </ul>
        </div>
      </div>
  </div>
  <!--- Space Holder Box --->
  <div class="slide-container-bottom"></div>
</div>


----

<!-- .slide: class="align-top" -->

#### Can Software Developer Boost Corporate Value? Accepted accounting principles often fail to capture the value of intangible capital

<div class="slide-container">
  <!--- Slide container (TOP) --->
  <div class="slide-container-top vertical">
    <!--- Content Box (1) equal height turned off--->
    <div class="slide-box" style="flex:0 0 20%">
      and what about the entrepreneurial preferences of software talent driving these new technologies — can their tendencies be measured, as well?</div>
    <!--- Content Box (2) --->
    <div class="slide-box">
      Research Scope – The reason to study this topic is to ...
      <hr>
      <ul class="square-list" style="margin-left:50px;">
        <li><span>... measure intangible assets and digital capital (market value of knowledge / human capital)</span></li>
        <li><span>... analyze the relationship between entrepreneurial activity and digital capital</span></li>
        <li><span>... examine how new ventures make and earn returns to investments in technology / 	technological labour</span></li>
      </ul>
    </div>
    <!--- Content Box (3) --->
    <div class="slide-box">
      Research question
      <hr>
      <ul class="square-list" style="margin-left:50px;">
        <li>How do social, structural and reputational effects influence entrepreneurial entry and entrepreneurial succes?</li>
        <li>What are the emerging trends in technological entrepreneurship?</li>
        <li>How is the relationship between market value and aggregated measures of <b>digital capital?</b></li>
      </ul>
    </div>
  </div>
  <!--- Space Holder Box --->
  <div class="slide-container-bottom"></div>
</div>

----  ----

<!-- .slide: class="align-center" -->

# Theory / Methods

<span style="display: inline;"></span>


----

<!-- .slide: class="align-top" -->

<div class='h-wrap'>
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Network Theory</h2><h2 style="font-size:1.563em"> distinguishes four types of mechanisms which relate network structures to consequences 

</h2>
</div>

<div class="slide-container">
  <div class="slide-container-top vertical">
  <div class="slide-box" style="flex:0 0 10%">Social Capital Theory is applicable to OSS development because OSS is an intellectual resource developed via the social action of freelance developers.</div>
  <div class="slide-box" style="background-image: url(img/02_theory/network.svg);
                                          background-size:60%;
                                          background-repeat: no-repeat;
                                          background-position: center, center;"></div>
  </div>
  <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

<div class='h-wrap'>
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Model</h2><h2 style="font-size:1.563em">: Research Tradition and operationalization of the underlying mechanism (cohesion, equivalence, ...) are yet to be defined</h2>
</div>

<div class="slide-container">
  <div class="slide-container-top" style="background-image: url(img/02_theory/model.svg);
                                          background-repeat: no-repeat;
                                          background-position: center, center;
                                          background-size:60%;"></div>
  <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

<div class='h-wrap'>
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Project 1</h2><h2 style="font-size:1.563em">: Network Measures - Projects have various kinds of developers characterized by different types of development activities</h2>
</div>

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout">
        <!--- Box 1 --->
        <div class="box-text" style="font-size:25px;">
          <p style="font-size:40px"><b>Reputation</b></p>
          <hr>
          <p>The expertise / performance of a developer depends on several factors:</p>
          <ul class="square-list" style="margin-left:50px;">
            <li>Quality</li>
            <li>Continuity</li>
            <li>Quantity</li>
          </ul>
        </div>
        <!--- Box 2 --->
        <div class="box-text" style="font-size:25px;">
          <p style="font-size:40px"><b>Status</b></p>
          <hr>
          <p>The activity of users forms several kinds of social networks:</p>
          <ul class="square-list" style="margin-left:50px;">
            <li>Network of collaboration</li>
            <li>Network of followers</li>
            <li>Network of watchers / stars</li>
          </ul>
        </div>
        <!--- Box 3 --->
        <div class="slide-box" style="margin:0 50px 0 50px;">
          <div class="box-img frame shadow" style="background-image: url(img/02_theory/commit.png);"></div>
        </div>
        <!--- Box 4 --->
        <div class="slide-box" style="margin:0 50px 0 50px;">
          <div class="box-img frame shadow" style="background-image: url(img/02_theory/graph.webp);"></div>
        </div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

<div class="h-wrap">
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Project 2</h2><h2 style="font-size:1.563em">: Equivalence Measures - Detecting technological topics across GitHub two compare entrepreneurs with similar specialization</h2>
</div>

<style>
.grid-container {
  width:100%;
  height:100%;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
  grid-template-rows: auto 1fr auto 1fr;
  gap: 10px 10px;
  grid-template-areas:
    "Left Top-Row Top-Row Top-Row Right"
    "Left Top-1 Top-2 Top-3 Right"
    "Left Bottom-Row Bottom-Row Bottom-Row Right"
    "Left Bottom-1 Bottom-2 Bottom-3 Right";
}

.Left { grid-area: Left; }
.Top-Row { grid-area: Top-Row; }
.Bottom-Row { grid-area: Bottom-Row; }
.Right { grid-area: Right; }
.Top-1 { grid-area: Top-1; }
.Top-2 { grid-area: Top-2; }
.Top-3 { grid-area: Top-3; }
.Bottom-1 { grid-area: Bottom-1; }
.Bottom-2 { grid-area: Bottom-2; }
.Bottom-3 { grid-area: Bottom-3; }

.Bottom { 
  display: grid;
  place-items: center;
  text-align:center;
}

</style>

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-container">
      <div class="Left frame">
        <div class="slide-container-top vertical" style="height:100%;">
          <div class="slide-box" style="padding:20px;">
            <div class="box-img" style="background-image: url(img/02_theory/readme.png);">
            </div>
          </div>
          <p style="text-align:center; margin-bottom:30px"><b>Input:</b><br>Annotated README</p>
        </div>
      </div>
      <div class="Top-Row frame" style="justify-content: center; align-items: center;">
        <div class="slide-box" style="display: grid; place-items: center;background: rgba(255, 255, 255, 0.05);">
          Method 1: Machine Learning
        </div>
      </div>
      <div class="Right frame">
        <div class="slide-container-top vertical" style="height:100%;">
          <div class="slide-box" style="padding:30px;">
            <div class="box-img" style="background-image: url(img/02_theory/cluster.svg);">
            </div>
          </div>
          <p style="text-align:center; margin-bottom:30px"><b>Output:</b><br>Clustered Topics</p>
        </div>
      </div>
      <div class="Top-1 frame">
        <div class="slide-container-top vertical" style="height:100%">
          <div class="slide-box" style="padding-top:20px;">
            <div class="box-img" style="background-image: url(img/02_theory/heuristic.svg);">
            </div>
          </div>
          <p style="text-align:center; font-size:0.7em; color:#98A6AD"><em>Heuristic</em></p>
          <div class="slide-box">
            <div class="box-img" style="padding-top:10px;background-image: url(img/02_theory/stat_feat.svg);">
            </div>
          </div>
          <p style="text-align:center; font-size:0.7em; color:#98A6AD"><em>Statistical</em></p>
          <p style="text-align:center; margin-bottom:30px">Feature Extraction</p>
        </div>
      </div>
      <div class="Top-2 frame">
        <div class="slide-container-top vertical" style="height:100%;">
          <div class="slide-box" style="padding:30px;">
            <div class="box-img" style="background-image: url(img/02_theory/brain.svg);"></div>
          </div>
          <p style="text-align:center; margin-bottom:30px">Classifier Learning</p>
        </div>
      </div>
      <div class="Top-3 frame">
        <div class="slide-container-top vertical" style="height:100%">
          <div class="slide-box" style="padding-top:35px;">
            <div class="box-img" style="background-image: url(img/02_theory/validation.svg);">
            </div>
          </div>
          <p style="text-align:center; margin-bottom:30px">Validation</p>
        </div>
      </div>
      <div class="Bottom-Row frame" style="justify-content: center; align-items: center;">
        <div class="slide-box" style="display: grid; place-items: center;background: rgba(255, 255, 255, 0.05);">
          Method 2: Topic Modeling
        </div>
      </div>
      <div class="Bottom Bottom-1 frame">
        <div class="slide-container-top vertical" style="height:100%;">
          <div class="slide-box" style="padding:30px;">
            <div class="box-img" style="background-image: url(img/02_theory/data_extract.svg);"></div>
          </div>
          <p style="text-align:center; margin-bottom:30px">Data Extraction</p>
        </div>
      </div>
      <div class="Bottom Bottom-2 frame">
        <div class="slide-container-top vertical" style="height:100%;">
          <div class="slide-box" style="padding:30px;">
            <div class="box-img">Bag-of-Words<br>Word Embedding<br>LDA</div>
          </div>
          <p style="text-align:center; margin-bottom:30px">Text Classification</p>
        </div>
      </div>
      <div class="Bottom Bottom-3 frame"></div>
    </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

<div class='h-wrap'>
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Project 3</h2><h2 style="font-size:1.563em">: Identity Matching - Linking Developer with startup data</h2>
</div>

<div class="slide-container">
  <div class="slide-container-top" style="background-image: url(img/02_theory/data_sources.svg);
                                          background-repeat: no-repeat;
                                          background-position: center, center;
                                          background-size:60%;"></div>
  <div class="slide-container-bottom"></div>
</div>

----  ----

<!-- .slide: class="align-center" -->

# Data

----

<!-- .slide: class="align-top" -->

<div class="h-wrap">
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Angellist (total)</h2><h2 style="font-size:1.563em">: >10 million profiles and >5 million organizations</h2>
</div>

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/03_data/al_employees_hist.png); height: 90%;"></div>
            <div style="text-align:center;">Profiles</div>
          </div>
          <!--- Content Box (2) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/03_data/al_markets.png); height: 90%;"></div>
            <div style="text-align:center;">Startups</div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

<div class="h-wrap">
  <h2 id="paper-2-technological-fields" style="font-size:1.563em">Angellist (github)</h2><h2 style="font-size:1.563em">: hard links to github and stackoverflow</h2>
</div>

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/03_data/....png); height: 90%;"></div>
            <div style="text-align:center;">Profiles</div>
          </div>
          <!--- Content Box (2) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/03_data/....png); height: 90%;"></div>
            <div style="text-align:center;">Startups</div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### RELATED Work

<div class="slide-container">
  <div class="slide-container-top">
  Overview to related works that address the reconstruction of social networks from software repositories (studies that construct graphs or networks where nodes capture developers while links capture social interactions and/or work dependencies between developers):
  <br>
  <br>
  * using data on direct developer communication, e.g. via
    * IRC channels
    * E-Mail exchanges
    * mailing lists,
    * communication via issue trackers<br>
  --> Issue: often not available due to privacy concerns
  * infer or reconstruct collaboration networks based on developer actions recorded in code repositories like CVS, SVN or git (Version Control Systems) --> code authorship / code ownership networks<br> 
    * mapping relation between a developer and the artefacts (i.e. files, modules, binaries, etc.) that he/she contributed to
    * --> Co-authorship networks (devs have modified at least one common artefact / module / project part)
    * --> Co-commit networks (devs have commited the same file / to the same project at least once)
  * --> Issues: undirected co-authorships networks based on joint contributions to files, modules or projects<br>
  * Potential Issues: They do not distinguish between 
      (i)  links between developers that are due to <i>independent</i> contributions to the same artefact
      (ii) links that are due to commit sequences where one developer builds upon and/or redacts the particular lines of source code previously authored by another developer.
      -->Networks defined based on time-ordered co-editing of code regions are likely associated with a stronger need for coordination and communication than the mere fact that developers edited the same file or module (citation_43). Just a few studies have adopted such a fine-grained approach. 
      
      Need:
      (I)  requires a detailed analysis of file modifications
      (II) identify the original author for every modified line of code affected in each commit
  </div>
  <div class="slide-container-bottom"></div>
</div>


----

<!-- .slide: class="align-top" -->

#### TESTTEST1

<div class="slide-container">
  <div class="slide-container-top" style="background-image: url(img/04_methods/coedit_network.svg);
                                          background-repeat: no-repeat;
                                          background-position: center, center;
                                          background-size:70%;"></div>
  <div class="slide-container-bottom"></div>
</div>


----

<!-- .slide: class="align-top" -->

#### Code Block

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <pre><code class="r"># Number of roles (for accounts with github account)
al_profiles_joined %>% 
  filter(!is.na(github_url)) %>% 
  count(role, sort = T)
## # A tibble: 8 x 2
##   role               n
##   &lt;chr&gt;          &lt;int&gt;
## 1 employee      635775
## 2 founder        57728
## 3 past_investor  17821
## 4 advisor         6569
## 5 board_member    2585
## 6 incubator       1630
## 7 mentor           455
## 8 attorney         262
&nbsp;
# Distinct profiles with github account
al_profiles_joined %>% 
  filter(!is.na(github_url)) %>% 
  distinct(github_url) %>% 
  count()
## 267133
</code></pre>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### TESTTEST

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <!--- IFrAME --->
          <iframe src="coediting_network.html" width="100%" height="100%">asd</iframe>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----  ----

<!-- .slide: class="align-center" -->

# Conclusion

----

<!-- .slide: class="align-top" -->

## Conclusion

<div class="row-top">


<div class="column">

#### Contributions

* __Theoretical__:

  * Organizational design and microfoundations of autonomy

  * Autonomy and entrepreneurial (over-) confidence

<br>


* __Practical__:

  * Professionalization of (corporate) entrepreneurship

  * Understand the design and limits of current practices



</div>


<div class="column">

#### Limitations & outlook


* Field experiment with real organization
  * Managerial assignment
  * Realistic degrees of freedom in choice
    * More or less contraint depending on organizational context (goals, structure) 


<br>

* Mechanism studies in more controlled environments



</div>

</div>



----  ----

<!-- .slide: class="align-center" -->

<!-- .slide: data-state="no-toc-progress" --> <!-- don't show toc progress bar on this slide -->


# *Thank You for Your attention!*
<!-- .element: class="no-toc-progress" -->

## *Let's keep in touch!*



</div>
  <ul class=network-icon aria-hidden=true>
    <li>
         <a href=https://www.startupengineer.io/authors/schwarz/>
              <i class="fas fa-home big-icon" class="accent">: https://www.startupengineer.io/authors/schwarz</i>
         </a>
    </li>
    <li>
         <a href=mailto:joschka.schwarz@tuhh.de>
              <i class="fas fa-envelope big-icon" class="accent">: joschka.schwarz@tuhh.de</i>
         </a>
    </li>
    <li>
        <a href=https://www.linkedin.com/in/joschka-schwarz/ target=_blank rel=noopener>
              <i class="fab fa-linkedin big-icon" class="accent">: https://www.linkedin.com/in/joschka-schwarz</i>
        </a>
    </li>
  </ul>
</div>


[![alt text](../img/logo.png)](https://www.startupengineer.io) <!-- .element: class="logo" -->

