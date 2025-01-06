<!-- UNIVERSITY LOGO -->
<div align="center">
  <a href="https://bmstu.ru">
    <img src="https://user-images.githubusercontent.com/67475107/225371733-8fd6f639-bf62-49bd-866c-4e08116fa20c.png" alt="University logo" height="200">
  </a>
  
  <h3>Graduation Qualifying Work of Master's degree</h3>
  Developed by Maxim Alshevskikh (<a href="https://www.linkedin.com/in/maxim-alshevskikh-b473b42b3/">LinkedIn</a>)
  <br/>
</div>

<!-- CONTENTS -->
## Contents

<ol>
  <li><a href="#about-the-project">About The Project</a></li>
  <li><a href="#component-diagram">Component Diagram</a></li>
  <li><a href="#screenshots">Screenshots</a></li>
  <li><a href="#research-result">Research Result</a></li>
</ol>

<!-- ABOUT THE PROJECT -->
## About The Project
<h4>An expert system for managing information flows in GeoAI systems is a prototype aimed at optimizing the operation of components in a GeoAI system by reducing the number of requests between subsystems. The expert system distributes data routes between subsystems, so the subsystems receive up-to-date information on where they should send processed data.</h4>
<h4>Components of the developed system:</h4>
<ul>
  <li>Expert system
    <ul>
      <li>Interface for interaction with an expert system</li>
      <li>Inference machine</li>
      <li>Knowledge base</li>
    </ul>
  </li>
  <li>Database</li>
  <li>API-Request Handler</li>
  <li>Expert system activator module</li>
  <li>Admin interface</li>
</ul>

<!-- COMPONENT DIAGRAM -->
## Component Diagram
<h3>In Russian</h3>
<img width="969" alt="component_diagram_rus" src="https://github.com/user-attachments/assets/dfc31d89-17c7-4381-bc0b-16f2774c609d" />
<h3>In English</h3>
<img width="951" alt="component_diagram_eng" src="https://github.com/user-attachments/assets/2f02849d-0df6-4bf9-85e7-0eef2733a2e4" />


<!-- SCREENSHOTS -->
## Screenshots
<h3>Screenshot with an example of launching an expert system from the activator module</h3>
<img width="482" alt="image" src="https://github.com/user-attachments/assets/0c98f77f-6446-456f-879b-a1474fe1e875" />
<h3>Screenshot of web page with table about subsystems</h3>
<img width="482" alt="image" src="https://github.com/user-attachments/assets/68c9f08c-d814-465d-8df7-38b8ff94ceec" />


<!-- RESEARCH RESULT -->
## Research Result
<h3>Description of the research:</h3>
<h4>In order to evaluate how effectively the developed expert system for managing information flows in the GeoAI system generates a route in comparison with the current solution in the GeoAI system "X", several measurements of the request processing time were carried out. Two options were considered respectively: the current solution in the system "X" and using the expert system. Measurements were made without copies of subsystems and with copies.
Time measurements with copies were made with different numbers of copies of subsystems.</h4>
  
<h3>Time measurement table (in Russian):</h3>


|      Number of copies            |      Measurement №1                                                |   Measurement №1                                                                 |      Measurement №2                                                |   Measurement №2                                                                 |      Measurement №3                                                |    Measurement №3                                                                |
|----------------------------------|---------------------------------------------------------------------|--------------------------------------------------------------------|---------------------------------------------------------------------|--------------------------------------------------------------------|---------------------------------------------------------------------|--------------------------------------------------------------------|
|                                  |      Time without using expert system (in seconds)     |      Time using expert system (in seconds)     |      Time without using expert system (in seconds)     |      Time using expert system (in seconds)     |      Time without using expert system (in seconds)     |      Time using expert system (in seconds)     |
|     0 (without copies)                |     0.424                                                           |     0.712                                                          |     0.280                                                           |     0.690                                                          |     0.362                                                           |     0.816                                                          |
|     1 (total count: 2)      |     0.623                                                           |     0.924                                                          |     0.496                                                           |     0.737                                                          |     0.385                                                           |     0.929                                                          |
|     2 (total count: 3)      |     0.868                                                           |     0.899                                                          |     0.579                                                           |     0.775                                                          |     0.413                                                           |     0.912                                                          |
|     3 (total count: 4)      |     0.890                                                           |     0.884                                                          |     0.597                                                           |     1.007                                                          |     0.514                                                           |     0.931                                                          |
|     4 (total count: 5)      |     0.909                                                           |     0.879                                                          |     0.818                                                           |     0.979                                                          |     0.750                                                           |     1.019                                                          |
|     5 (total count: 6)      |     0.919                                                           |     1.031                                                          |     0.936                                                           |     1.020                                                          |     0.807                                                           |     1.069                                                          |
|     6 (total count: 7)      |     1.28                                                            |     0.906                                                          |     1.14                                                            |     1.083                                                          |     1.35                                                            |     0.917                                                          |
|     7 (total count: 8)      |     1.81                                                            |     0.914                                                          |     1.27                                                            |     1.160                                                          |     1.57                                                            |     1.201                                                          |
|     8 (total count: 9)      |     1.523                                                           |     0.964                                                          |     1.54                                                            |     0.948                                                          |     1.6                                                             |     1.232                                                          |
|     9 (total count: 10)     |     1.442                                                           |     1.295                                                          |     1.53                                                            |     1.222                                                          |     1.88                                                            |     1.255                                                          |
|     10 (total count: 11)    |     1.917                                                           |     1.398                                                          |     1.91                                                            |     1.36                                                           |     1.82                                                            |     1.319                                                          |
|     11 (total count: 12)    |     1.591                                                           |     1.343                                                          |     1.62                                                            |     1.329                                                          |     1.725                                                           |     1.36                                                           |
|     12 (total count: 13)    |     1.948                                                           |     1.15                                                           |     1.894                                                           |     1.43                                                           |     1.84                                                            |     1.247                                                          |
|     13 (total count: 14)    |     1.754                                                           |     1.377                                                          |     1.926                                                           |     1.685                                                          |     1.9                                                             |     1.607                                                          |
|     14 (total count: 15)    |     1.791                                                           |     1.67                                                           |     1.88                                                            |     1.743                                                          |     1.868                                                           |     1.747                                                          |
|     15 (total count: 16)    |     1.885                                                           |     1.73                                                           |     1.773                                                           |     1.754                                                          |     1.873                                                           |     1.78                                                           |
|     16 (total count: 17)    |     2.05                                                            |     1.78                                                           |     1.991                                                           |     1.912                                                          |     1.95                                                            |     1.8                                                            |
|     17 (total count: 18)    |     2.142                                                           |     1.86                                                           |     2.213                                                           |     1.999                                                          |     2.23                                                            |     1.925                                                          |
|     18 (total count: 19)    |     2.41                                                            |     2.014                                                          |     2.36                                                            |     2.052                                                          |     2.301                                                           |     1.989                                                          |
|     19 (total count: 20)    |     2.752                                                           |     2.027                                                          |     2.7                                                             |     2.054                                                          |     2.98                                                            |     2.086                                                          |


<h3>Histogram of measurement №1 (Orange - time without using expert system (in seconds); Blue - time using expert system (in seconds)):</h3>
<img width="482" alt="image" src="https://github.com/user-attachments/assets/15a03c05-d02b-4fb7-96d8-07159ad9fdb6" />

<h3>Histogram of measurement №2 (Orange - time without using expert system (in seconds); Blue - time using expert system (in seconds)):</h3>
<img width="482" alt="image" src="https://github.com/user-attachments/assets/4e2741f2-c52e-4cc1-9006-80afc1a75f0e" />

<h3>Histogram of measurement №3 (Orange - time without using expert system (in seconds); Blue - time using expert system (in seconds)):</h3>
<img width="482" alt="image" src="https://github.com/user-attachments/assets/188e93aa-47f0-4072-b957-ff328d839b98" />

<h3>Conclusions:</h3>
<h4>Each histogram demonstrates the dependence of the request processing time on the number of subsystem copies. Two cases of request processing were considered: without using an expert system, with using an expert system. All histograms show an increase in time in seconds (values ​​on the Oy axis) with an increase in the number of subsystem copies (values ​​on the Ox axis). However, it can be noted that with a large number of subsystem duplicates, the request processing time without using an expert system is more important than with using an expert system under the same conditions. Starting with a number of subsystem copies of 6-8 pieces, the request processing time using an ES becomes less than without it. It can be concluded that by increasing the number of subsystem copies, request processing using an expert system will be performed faster than without it by enumerating and checking information from each subsystem copy. Therefore, using an expert system to manage information flows in a GeoAI system is effective and justified. The expert system for system "X" can be further complicated by adding new rules to the knowledge base. The developed expert system can be implemented not only in the GeoAI system, but also in other systems that include a large number of components. In this case, it is necessary to take into account the dependence between the components and the properties-parameters of the components themselves that affect the state of the knowledge base.</h4>
