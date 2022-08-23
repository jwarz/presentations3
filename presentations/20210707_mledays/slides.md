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
    height:90%;
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
  grid-template-columns: 1fr 1fr 1fr; /*layout*/
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

# Geometric Deep Learning
<!-- .element: class="no-toc-progress" --> <!-- slide not in toc progress bar -->


<h2 style="text-align: center;">Machine Learning with Graphs</h2>

<br> 

[Joschka Schwarz][1] - [Christoph Ihl][2]

<br> 


MLE-Days 2022 | TU Hamburg


[![alt text](img/logo.png)](https://www.startupengineer.io) <!-- .element: class="logo" -->


[1]: https://www.startupengineer.io/authors/schwarz/
[2]: https://www.startupengineer.io/authors/ihl/
<!-- [2]: https://www.tuhh.de/alt/sdw -->


----  ----

<!-- .slide: class="align-center" -->

# Geometric Deep Learning: Why Graphs?

----

<!-- .slide: class="align-top" -->

#### ML is a function estimation problem

*If we look at ML at least in its simplest setting it's essentially a function estimation problem. We are given the outputs of some unknown function on a training set let's say labelled images of us and try to find a function from some hypothesis class that fits well the training data and allows to predict the outputs on previously unseen inputs.*

*Neural networks appear to be a suitable choice to represent functions beceause even with the simplest construction like the perceptron shown here we can produce a dense class of funtions using just two layers...*

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/01_motivation/02_svg/ml_bb_vert.svg); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Multilayer perceptron can approximate a continuous function to any desired accuracy

*...which allows us to approximate any continuous function to any desired accuracy. We call this property Universal Approximation. The setting of this problem in low dimensions is a classical problem in approximation theory that has been studied to death in the past centuary...*

<div class="slide-container">
        <div class="slide-container-top vertical">
        <div class="slide-box" style="flex:0 0 65%">
          <div class="box-img" style="background-image: url(img/01_motivation/02_svg/function.svg);"></div>
        </div>
          <div class="slide-box">
            <div class="box-text">Multilayer Perceptrons (Rosenblatt, 1958), the simplest feed- forward neural networks, are universal approximators: with just one hidden layer, they can represent combinations of step functions, allowing to approx- imate any continuous function with arbitrary precision.</div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Curse of dimensionality

*...we have a very precise mathematical control of the estimation errors. But the situation is entirely differnet in high dimensions... The number of samples grows very fast with the dimensions... So we get a phenomenon colloquially known as the curse of dimensionality.... makes learnign impossible*

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/complexity.svg); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

<h4>A symmetry of an object or system is a transformation that leaves a certain property of said object or system unchanged or <b>invariant</b></h4>

*This is perhaps best seen in computer vision problems like image classifaction. Even tiny images tend to be very high dimensional but intuitive they have a lot of structure that is broken and thrown away then we parse the image into a vector to feed it into the simple perceptron neural network. If the image is now shifted by just one pixel, the vectorized input will be very different and the neural network will need to be shown a lot of examples in order to learn that shifted inputs must be classified in the same way.*

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/dnn2.svg); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### In computational chemistry, the task of predicting properties of molecules independently of their orientation in space requires rotational invariance

*Another example: Molexule of caffeine represented as a graph. Nodes = atoms, edges = chemical bonds. If we were to apply a neural network to this input for example to predict some chemical property like its binding energy to some receptor we could parse it again a vector. but this time you see that any arrangement of the node features will do, because in graphs (unlike images) we don't have a preferential way of ordering the nodes. Molecules appear to be just one example of data with irregular npn-euclidian struture on which we would like to apply deep learning techniques...*

Take a look at the equivarent matrix adjenceny part late
<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/molecule.svg); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Viele Arten von Daten sind Graphen (1)

*...further examples are...*

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout">
        <!--- Box 1 --->
        <div class="slide-box frame">
            <span class="article-header-caption"><a href="https://neo4j.com/blog/the-first-graphgist-challenge-completed/">Image credit: neo4j</a></span>
            <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/event_graph.svg); height:70%;"></div>
            <div style="display:flex; align-items:center; justify-content: center;">Event Graphs</div>
        </div>
        <!--- Box 2 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://www.pngix.com/viewpng/hwoTx_networking-png-png-image-computer-network-transparent-png/">Image credit: pngix</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/computer_network.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Computer Netzwerke</div>
        </div>
        <!--- Box 3 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://comm.stanford.edu/mm/2016/07/polarization.jpg">Image credit: stanford</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/particle_network.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Partikel Netzwerke</div>
        </div>
        <!--- Box 4 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://images.nagwa.com/figures/586186734913/1.svg">Image credit: nagwa</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/food_web.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Nahrungsnetze</div>
        </div>
        <!--- Box 5 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="http://psb.stanford.edu/psb-online/proceedings/psb18/agrawal.pdf">Image credit: Monica Agrawal et al.</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/disease_pathway.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Übertragungswege</div>
        </div>
        <!--- Box 6 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://upload.wikimedia.org/wikipedia/commons/c/c5/Karte_der_S-Bahn_Hamburg.svg">Image credit: Wikipedia</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/sbahn_hh.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">U-Bahn Netzwerke</div>
        </div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->
            
#### Viele Arten von Daten sind Graphen (2)

<style>
.article-header-caption {
    position: absolute;
    font-size: .5em;
    background: #000;
    z-index: 5;
    opacity: .4;
    border-radius: 0 0 10px 0;
    margin:-10px;
}

@media (min-width: 64em) {
    .article-header-caption {
        padding:5px 10px
    }
}

.article-header-caption a {
    color: #fff;
    text-decoration:none
}
.slide-box2 {
    flex: 1 0;
    overflow: auto;
    padding:0px;
}
</style>

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout">
        <!--- Box 1 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://all-free-download.com/free-vector/download/social-network-concept-human-icons-connected-in-circle_6826089.html">Image credit: all-free-download</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/social_network.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Soziale Netzwerke</div>
        </div>
        <!--- Box 2 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://science.sciencemag.org/content/325/5939/422">Image credit: science</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/economic_network3.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Ökonomische Netzwerke</div>
        </div>
        <!--- Box 3 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://courses.lumenlearning.com/wmopen-introbusiness/chapter/communication-channels-flows-networks/">Image credit: lumenlearning</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/communication_network.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Kommunikationsnetzwerke</div>
        </div>
        <!--- Box 4 --->
        <div class="slide-box frame">
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/citation_network.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Zitationsnetzwerke</div>
        </div>
        <!--- Box 5 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="http://quote.ucsd.edu/sayginlab/files/2013/01/Neurons74.jpg">Image credit: UCSD</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/neurons.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Netzwerk von Neuronen</div>
        </div>
        <!--- Box 6 --->
        <div class="slide-box frame">
        <span class="article-header-caption" style=""><a href="https://www.pngegg.com/en/png-bsete">Image credit: pngegg</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/internet2.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Internet</div>
        </div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Viele Arten von Daten sind Graphen (3)

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout">
        <!--- Box 1 --->
        <div class="slide-box frame">
        <span class="article-header-caption" style=""><a href="https://arxiv.org/abs/1503.00759">Image credit: Maximilian Nickel et al.</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/knowledge_graph.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Wissensgraphen</div>
        </div>
        <!--- Box 2 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://upload.wikimedia.org/wikipedia/commons/7/7c/LSD_Structure.svg">Image credit: Wikipedia</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/molecules.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Moleküle</div>
        </div>
        <!--- Box 3 --->
        <div class="slide-box frame">
          <span class="article-header-caption" style=""><a href="https://www.researchgate.net/publication/220751974_Breadcrumbs_Efficient_Context_Sensitivity_for_Dynamic_Bug_Detection_Analyses">Image credit: Samuel Guyer et al.</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/code_graph.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Code Graphen</div>
        </div>
        <!--- Box 4 --->
        <div class="slide-box frame">
        <span class="article-header-caption" style=""><a href="https://upload.wikimedia.org/wikipedia/commons/a/a0/Dolphin_triangle_mesh.svg">Image credit: Wikipedia</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/02_svg/dolphin_triangle_mesh.svg); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">3D Shapes</div>
        </div>
        <!--- Box 5 --->
        <div class="slide-box frame">
        <span class="article-header-caption" style=""><a href="http://math.hws.edu/graphicsbook/c2/scene-graph.png">Image credit: math.hws.edu</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/scene_graph2.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Scene graphs</div>
        </div>
        <!--- Box 6 --->
        <div class="slide-box frame">
        <span class="article-header-caption" style=""><a href="https://www.mdpi.com/2073-4425/11/7/771">Image credit: MDPI</a></span>
          <div class="box-img" style="margin:20px; background-image: url(img/01_motivation/03_png/regulatory_network2.png); height:70%;"></div>
          <div style="display:flex; align-items:center; justify-content: center;">Gen regulatory network</div>
        </div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>


----

<!-- .slide: class="align-top" -->

#### Viele Arten von Daten sind Graphen (4)

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/graph.webp); height: 90%;"></div>
            <div style="text-align:center;">Continuous-time dynamic graph settings</div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>


----

<!-- .slide: class="align-top" -->

#### Geometric prior (explain equivarence & invariance)

*...let's look again at the multi-dimensional image classification, that at the first glance seemed hopeless because of the curse of dimensionality. Fortunately we have additional structure that comes from the geometry of the input signal. We call this structure a geometric prior and it's a general powerful principle that gives us optimism and hope in dimensionality cursed problems. In our example of image classification, the input image is not just a d-dimensional vector. It's a signal defined on some domain which in this case is a two-dimensional grid. The structure of the domain is captured by a symmetry group. The group of 2d translations in our examaple, which acts on the points on the domain. In the space of signals, the group actions on the underlying domain are manifested through what is called the group representation. In our case it's simply the shift operator, a d x d matrix that acts on the d-dimensional vector...*

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/signals.svg); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### invariance/equivarence (shift) + scale separation (coarse graining) + Aufbau von layern und pooling

*...invariant functions. No matter where Christoph is located in the image, we still want to say it's Christoph --> Example of shift invariance*<br>

*...explain shift equivarence..*

*...scale separation? (coarse graining)*

*...Example image: Sequence of equivarent layers, then an invariant global pooling layer aggregating everything into a single output. Optional coarsening procedure that takes the form of local pooling in neural network implementations.*

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/...); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Graph (arbitrary ordering of nodes)

*which can be ordered --> call the grap directed*<br>
*nodes can have some features attached to them, modeled as d-dimensional vectors(age, genderm, ...)*<br>
*A key structural characteristic of a graph is that we don't have a canocical way to order its nodes. So if we arrange the node feature vectors into a matrix, we automatically prescribe some arbitrary ordering of the nodes. The same holds for the adjacency matrix that represents the structure of the graph. If we number the nodes differently, the rows of the feature matrix and the corresponding rows and columns of the adjacency matrix will be permuted by some permutation matrix P. P is a representation of the permutation group and we have n! such elements*<br>
*

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/graph.svg); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Permutation

*If we want to implement a function on the graph that provides a single output for the whole graph like predicting energy in our molecule graph example, we need to make sure that its output is unaffected by the ordering of the input nodes. We call such f permutation invariant. If on the other hand we want to make node wise predictions, for example to detect malicious users in a social network, we want a function that changes in the same way as the input with the reordering of the nodes or in other words is permutation equivariant.*<br>

A way of constructing a pretty broad class of traceable functions on graphs is using the local neighborhood of a node. We look at the nodes that are connected by an edge to a node i and aggregate their feature vectors together with the vector of the node itself (?). Because we don't have a canocial ordering of the neighbors this must be done in a permutation invariant way. So this local aggregation function that we denote by UPDATE... 

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/permutation_inv_equ.svg); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Formulas

*...*

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/formulas.svg); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Alternative approach to deep learning models:\nSample-Ensemble Genetic Evolutional Network

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <!--- Content Box (1) --->
          <div class="slide-box">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/rep_learn_outline.svg); height: 90%;"></div>
          </div>
        </div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Message Passing Scheme

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/dataflow.svg); height: 90%;"></div>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Node classifactions, ...

<div class="slide-container">
        <div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          Nodes classification<br>
          Graph classifaction<br>
          Link Prediction<br>
          Inductive Learning<br>
          Transductive Learning<br>
        </div>
  <div class="slide-container-bottom">
  </div>
</div>

----


<!-- .slide: class="align-top" -->

#### Graphen sind die neue Forschungsgrenze des Deep Learning

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/gnn.svg);"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>


----  ----

<!-- .slide: class="align-center" -->

# Why convolutions?

###  Wie können wir neuronale Netze entwickeln, die viel breiter einsetzbar sind?

<span style="display: inline;"></span>


----

<!-- .slide: class="align-top" -->

#### Example 1: Protein Folding - A protein chain acquires its native 3D structure

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/deep_mind.svg); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 1: The Protein Folding Problem - Computationally predict a protein's 3D structure based solely on its amino acid sequence

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/protein.gif); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 1: The Protein Folding Problem - Computationally predict a protein's 3D structure based solely on its amino acid sequence

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/protein.webp); height: 90%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 1: The Protein Folding Problem - Computationally predict a protein's 3D structure based solely on its amino acid sequence

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="box-img" style="background-image: url(img/02_dl/02_svg/alphafold.svg); height: 100%;"></div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 3: Recommender system

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="slide-box" style="flex:0 0 30%">
            <div class="box-text" style="font-size:25px;">
              <ul>
                <li>Users interacts with items</li>
                  <ul style="list-style: square; color:#2dc6d6">
                    <li><span>Watch movies, buy merchandise, listen to music</span></li>
                    <li><span>Nodes: Users and items</span></li>
                    <li><span>Edges: User-item interactions</span></li>
                  </ul>
                <li>Goal: Recommend items users might like</li>
              </ul>  
            </div>
          </div>
          <div class="slide-box" style="height: 10%;">
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/rec_sys.svg); height: 100%;"></div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 3: PinSage: Task: Recommend related pins to users

<style>
.containerPinSage {
  height:100%;
  display: grid; 
  grid-template-columns: 1fr 1fr 1fr; 
  grid-template-rows: 1.5fr 0.2fr 1.3fr; 
  gap: 10px 10px; 
  grid-template-areas: 
    "u1 u1 u2"
    "m1 m1 m1"
    "botdo1 botdo1 botdo2";
}
.u1 { grid-area: u1; }
.u2 { grid-area: u2; }
.m1 { grid-area: m1; }
.botdo1 { grid-area: botdo1; }
.botdo2 { grid-area: botdo2; }


</style>

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="containerPinSage">
            <div class="u1">
              <div class="box-img" style="background-image: url(img/02_dl/02_svg/pinsage1.svg); "></div>
            </div>
            <div class="u2">
              <section>
                <b style="color:#2dc6d6;">Task:</b> Learn node embeddings $z_{i}$ such that
                \[\begin{aligned}
                d(z_{bike1},z_{bike2}) < d(z_{bike1},z_{jacket})
                \end{aligned} \]
              </section>
            </div>
            <div class="m1">
              <div class="box-text"><b>Predict whether two nodes in a graph are related</b></div>
            </div>
            <div class="botdo1">
              <div class="box-img" style="background-image: url(img/02_dl/02_svg/pinsage2.svg); background-size:80%;"></div>
            </div>
            <div class="botdo2">
              <div class="box-img" style="background-image: url(img/02_dl/02_svg/pinsage3.svg);"></div>
            </div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Example 4: Drug Side Effect

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
        <div class="slide-box" style="flex:0 0 15%">
        <p style="text-align:center;">Many patients take multiple drugs to treat complex or co-existing diseases. <br>Task: Given a pair of drugs predict adverse side effects!</p>
        </div>
          <div class="slide-box">
            <div class="box-img" style="background-image: url(img/02_dl/02_svg/drug_union.svg); height: 100%;"></div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
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

----  ----

<!-- .slide: class="align-center" -->

# Defining graph convolution

### backup

<span style="display: inline;"></span>


----

<!-- .slide: class="align-center" -->

# Building the full neural network

### backup

<span style="display: inline;"></span>


----


<!-- .slide: class="align-center" -->

# Conclusions

### backup

<span style="display: inline;"></span>


----

<!-- .slide: class="align-top" -->

#### Aktuelle Situation: Moderne Deep-Learning-Techniken sind in der Regel für einfache Sequenzen & Grids ausgelegt

<style>
.grid-containerDNN {
  width:100%;
  height:100%;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  grid-template-rows: 0.5fr 1fr auto;
  gap: 15px 15px;
  grid-template-areas:
    "P1 P2 P3 P4"
    "DNN DNN DNN DNN"
    "subtext subtext subtext subtext";
}

.P1 { grid-area: P1; }
.P2 { grid-area: P2; }
.P3 { grid-area: P3; }
.P4 { grid-area: P4; }
.DNN { grid-area: DNN; }
.subtext { grid-area: subtext; }

</style>

<br>
<br>

<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="grid-containerDNN">
            <div class="P1">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/03_png/01.png); height:70%;"></div>
              <div style="display:flex; align-items:center; justify-content: center;">Christoph</div>
            </div>
            <div class="P2">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/03_png/02.png); height:70%;"></div>
              <div style="display:flex; align-items:center; justify-content: center;">Muster lokaler Kontraste</div>
            </div>
            <div class="P3">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/03_png/03.png); height:70%;"></div>
              <div style="display:flex; align-items:center; justify-content: center;">Gesichtsmerkmale</div>
            </div>
            <div class="P4">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/03_png/04.png); height:70%;"></div>
              <div style="display:flex; align-items:center; justify-content: center;">Gesicht</div>
            </div>
            <div class="DNN box-img" style="background-image: url(img/02_dl/02_svg/dnn.svg);"></div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Problem: Komplexe Domänen haben eine umfassende relationale Struktur, die als relationaler Graph dargestellt werden kann.


<style>

.container-network {
  width:100%;
  height:100%;
  display: grid; 
  grid-template-columns: 1fr 0.5fr 1fr; 
  grid-template-rows: 2fr 1fr; 
  gap: 60px 20px; 
  grid-template-areas: 
    "img1 img2 img3"
    "img4 img4 img4";
}
.img1 { grid-area: img1; }
.img2 { grid-area: img2; }
.img3 { grid-area: img3; }
.img4 { grid-area: img4; }

.lastdot:before {
   color: #2dc6d6;
 }

</style>


<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top vertical">
          <div class="container-network">
            <div class="img1 frame shadow">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/02_svg/network_complex.svg); height:85%;"></div>
              <div class="subtext" style="text-align:center;"><b>Networks</b></div>
            </div>
            <div class="img2">
              <div class="box-img" style="margin:10px; background-image: url(img/02_dl/02_svg/vs_arrow.svg); height:85%;"></div>
            </div>
            <div class="img3 frame shadow">
              <div class="box-img" style="margin:20px 20px 0 20px; background-image: url(img/02_dl/02_svg/img_text.svg); height:85%;"></div>
              <div class="subtext" style="text-align:center;"><b>Images & Text</b></div>
            </div>
            <div class="img4">
              <ul class="square-list" style="margin-left:50px;">
                <li><span>Beliebige Größe und komplexe topologische Struktur (d.h. keine räumliche Lokalitäten wie bei grids)</span></li>
                <li><span>Keine feste Knotenreihenfolge oder Referenzpunkte</span></li>
                <li><span>Oft dynamisch und mit multimodalen Merkmalen</span></li>
              </ul>
              <ul style="list-style-type: '➤ '; margin-left:50px;">
                <li><span>Durch die explizite Modellierung von Beziehungen erreichen wir eine bessere Performance!</span></li>
              </ul>
            </div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----

<!-- .slide: class="align-top" -->

#### Es gibt im Wesentlichen zwei große Arten von Daten, die als Graphen dargestellt werden können

<style>
/*GRID layout*/
.grid-layout2 {
  height:100%;
  width:100%;
  display: grid;
  grid-template-columns: 1fr 1fr; /*layout*/
  grid-template-rows: 1.5fr 0.5fr;
    grid-template-areas:
    "T1 T2"
    "B1 B1";
  grid-gap: 50px 10px;
}

.T1 { grid-area: T1; }
.T2 { grid-area: T2; }
.B1 { grid-area: B1; }

li span { color: white; }
</style>

<div class="slide-container">
  <div class="slide-container-top">
    <div class="grid-layout2">
      <div class="T1">
        <!--- Top Box 1 --->
        <div class="box-text" style="font-size:25px;">
          <p style="font-size:40px"><b>Netzwerke</b></p>
          <hr>
          <p>Auch bekannt als <b>Natural Graphs</b>:</p>
          <ul class="square-list" style="margin-left:50px;">
            <li>Soziale Netzwerke
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Die <b>Gesellschaft</b> ist eine Ansammlung von 7+ Milliarden Individuen</span></li>
              </ul>  
            </li>
            <li>Kommunikation und Transaktionen
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Elektronische Geräte, Telefonate, Finanztransaktionen</span></li>
              </ul>  
            </li>
            <li>Biomedizin
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Wechselwirkungen zwischen <b>Genen/Proteinen</b> regulieren das Leben</span></li>
              </ul>  
            </li>
            <li>Hirnverbindungen
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Unsere <b>Gedanken</b> sind in den Verbindungen zwischen Milliarden von Neuronen verborgen</span></li>
              </ul>  
            </li>
          </ul>
        </div>
      </div>
      <div class="T2">
        <!--- Top Box 2 --->
        <div class="box-text" style="font-size:25px;">
          <p style="font-size:40px"><b>Graphen</b></p>
          <hr>
          <p>als Repräsentation:</p>
          <ul class="square-list" style="margin-left:50px;">
            <li><b>Information / Wissen</b> werden organisiert und verknüpft</li>
            <li><b>Software</b> kann als Graph dargestellt werden</li>
            <li><b>Ähnlichkeitsnetzwerke</b>
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Ähnliche Datenpunkte verbinden</span></li>
              </ul>  
            </li>
            <li>Relationale Strukturen
              <ul style="color: #2dc6d6; margin-left:50px;">
                <li><span>Moleküle, Szenendiagramme, 3D-Formen, partikelbasierte Physiksimulationen</span></li>
              </ul>  
            </li>
          </ul>
        </div>
      </div>
      <!--- Bottom Box 3 --->
      <div class="B1" style="text-align:center; font-size:40px;">⚡⚡ Manchmal ist die Unterscheidung zwischen Netzwerken und Graphen unscharf ⚡⚡</div>
    </div>
  </div>
  <div class="slide-container-bottom">
  </div>
</div>

----

<!-- .slide: class="align-top" -->

#### Warum Graphen?


<p style="text-align:center">Graphen sind eine allgemeine Sprache zum Beschreiben und Analysieren von Entitäten mit Beziehungen/Interaktionen.</p>
<br>
<div class="slide-container">
        <!--- Slide container (TOP) --->
        <div class="slide-container-top horizontal">
          <!--- Content Box (1) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/01_motivation/02_svg/graph_entities.svg); background-size:80%;"></div>
          </div>
          <!--- Content Box (2) --->
          <div class="slide-box frame">
            <!--- IMAGE --->
            <div class="box-img" style="background-image: url(img/01_motivation/02_svg/graph_entities_connected.svg); background-size:80%;"></div>
          </div>
        </div>
        <!--- Slide container (BOTTOM / SPACING) --->
        <div class="slide-container-bottom"></div>
</div>

----