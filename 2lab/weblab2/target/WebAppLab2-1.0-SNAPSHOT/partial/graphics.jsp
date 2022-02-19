<%@ page contentType="text/html;charset=UTF-8"%>
<div class="graphics">
    <svg width="300" height="300" class="svg-graph" xmlns="http://www.w3.org/2000/svg">


        <!--            Линии оси-->

        <line class="axis" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
        <line class="axis" x1="150" x2="150" y1="0" y2="300" stroke="black"></line>
        <polygon points="150,0 144,15 156,15" stroke="black"></polygon>
        <polygon points="300,150 285,156 285,144" stroke="black"></polygon>

        <line class="coor-line" x1="200" x2="200" y1="155" y2="145" stroke="black"></line>
        <line class="coor-line" x1="250" x2="250" y1="155" y2="145" stroke="black"></line>

        <line class="coor-line" x1="50"  x2="50"  y1="155" y2="145" stroke="black"></line>
        <line class="coor-line" x1="100" x2="100" y1="155" y2="145" stroke="black"></line>

        <line class="coor-line" x1="145" x2="155" y1="100" y2="100" stroke="black"></line>
        <line class="coor-line" x1="145" x2="155" y1="50"  y2="50"  stroke="black"></line>

        <line class="coor-line" x1="145" x2="155" y1="200" y2="200" stroke="black"></line>
        <line class="coor-line" x1="145" x2="155" y1="250" y2="250" stroke="black"></line>

        <text class="coor-text" x="195" y="140">R/2</text>
        <text class="coor-text" x="248" y="140">R</text>

        <text class="coor-text" x="40" y="140">-R</text>
        <text class="coor-text" x="90" y="140">-R/2</text>

        <text class="coor-text" x="160" y="105">R/2</text>
        <text class="coor-text" x="160" y="55">R</text>

        <text class="coor-text" x="160" y="205">-R/2</text>
        <text class="coor-text" x="160" y="255">-R</text>

        ]
        <polygon class="svg-figure rectangle-figure" points="150,150 150,250 200,250, 200,150"
                 fill="blue" fill-opacity="0.3" stroke="blue"></polygon>

        ]

        <path  class="svg-figure circle-figure" d=" M 100 150 A 100 100, 90, 0, 0, 150 200 L 150 150 Z"
               fill="blue" fill-opacity="0.3" stroke="blue"></path>
        ]
        ]
        <polygon class="svg-figure triangle-figure" points="50,150 150,100 150,150"
                 fill="blue" fill-opacity="0.3" stroke="blue"></polygon>

        <circle r="0" cx="150" cy="150" id="target-dot"></circle>

    </svg>

</div>

