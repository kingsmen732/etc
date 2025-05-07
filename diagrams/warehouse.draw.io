<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:137.0) Gecko/20100101 Firefox/137.0" version="26.2.5">
  <diagram name="Page-1" id="Bvx_TsEFFrqG-H3BDD29">
    <mxGraphModel dx="1503" dy="826" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="IMauDdLWN3BrcHpvlUnd-18" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="270" y="250" width="250" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-28" value="" style="group" vertex="1" connectable="0" parent="IMauDdLWN3BrcHpvlUnd-18">
          <mxGeometry width="250" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-15" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-28">
          <mxGeometry width="250" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-16" value="&lt;b&gt;Resizing stream&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-28">
          <mxGeometry x="80" y="108" width="100" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-27" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-28" source="IMauDdLWN3BrcHpvlUnd-25" target="IMauDdLWN3BrcHpvlUnd-26">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-25" value="Resize&lt;br&gt;(720x720)" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=10;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-28">
          <mxGeometry x="20" y="44" width="70" height="46" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-26" value="Batch Formation" style="rhombus;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-28">
          <mxGeometry x="150" y="27" width="80" height="80" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-19" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="270" y="70" width="250" height="143" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-12" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry width="250" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-9" value="" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-19" source="IMauDdLWN3BrcHpvlUnd-5" target="IMauDdLWN3BrcHpvlUnd-8">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-5" value="" style="triangle;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="111" y="20" width="30" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-6" value="&lt;b&gt;FFmpeg&lt;/b&gt;&lt;br&gt;convert media" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="95" y="70" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-8" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#01A88D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.agent2;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="181" y="20" width="30" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-10" value="&lt;b&gt;CUDA&lt;/b&gt;&lt;br&gt;Decoder" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="166" y="70" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-11" value="Camera endpoints" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="15" y="80" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-13" value="&lt;b&gt;Stream capturing&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="65" y="103" width="116" height="40" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-23" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-19" source="IMauDdLWN3BrcHpvlUnd-1">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="110" y="35" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-1" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.data_stream;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-19">
          <mxGeometry x="15" y="7.5" width="55" height="55" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-30" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;shape=flexArrow;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-12" target="IMauDdLWN3BrcHpvlUnd-15">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-45" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="140" y="460" width="210" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-31" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-45">
          <mxGeometry x="-10" width="220" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-42" value="&lt;b&gt;Yolo object detection&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-45">
          <mxGeometry x="35" y="110" width="140" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-53" value="&lt;div&gt;Bounding&amp;nbsp;&lt;/div&gt;&lt;div&gt;box&amp;nbsp;&lt;/div&gt;&lt;div&gt;extraction&lt;/div&gt;" style="shape=parallelogram;perimeter=parallelogramPerimeter;whiteSpace=wrap;html=1;fixedSize=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-45">
          <mxGeometry y="25" width="90" height="90" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-55" value="Class Filtering" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=10;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-45">
          <mxGeometry x="100" y="40" width="100" height="60" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-63" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0.007;entryY=0.511;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-45" source="IMauDdLWN3BrcHpvlUnd-53">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="69.30000000000005" y="69.67" as="sourcePoint" />
            <mxPoint x="99.99999999999999" y="70.32999999999997" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-46" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="450" y="460" width="217.5" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-32" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry width="210" height="140" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-43" value="&lt;b&gt;ArcFace Recognition&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry x="35" y="110" width="140" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-57" value="" style="triangle;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry x="20" y="30" width="50" height="50" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-58" value="Face Alignement" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry x="15" y="80" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-71" value="" style="group" vertex="1" connectable="0" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry x="126.25" y="20" width="60" height="70" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-68" value="" style="shape=card;whiteSpace=wrap;html=1;size=20;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-71">
          <mxGeometry width="42.857142857142854" height="54.44444444444444" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-69" value="" style="shape=card;whiteSpace=wrap;html=1;size=20;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-71">
          <mxGeometry x="8.571428571428571" y="7.777777777777778" width="42.857142857142854" height="54.44444444444444" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-70" value="" style="shape=card;whiteSpace=wrap;html=1;size=20;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-71">
          <mxGeometry x="17.142857142857142" y="15.555555555555555" width="42.857142857142854" height="54.44444444444444" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-72" value="Feature extraction" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-46">
          <mxGeometry x="102.5" y="90" width="107.5" height="20" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-48" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="253" y="640" width="344.56" height="220" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-34" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="-10" width="350" height="220" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-44" value="&lt;b&gt;ReID Cross- Camera Tracking&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;container=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="38.99971071428574" y="177.1428571428571" width="265.28125" height="47.14285714285714" as="geometry">
            <mxRectangle y="110" width="190" height="30" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-89" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.029;entryY=0.513;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-48" source="IMauDdLWN3BrcHpvlUnd-75" target="IMauDdLWN3BrcHpvlUnd-79">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="130" y="120" as="targetPoint" />
            <Array as="points">
              <mxPoint x="130" y="105" />
              <mxPoint x="130" y="120" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-75" value="&lt;b&gt;Vector space&lt;/b&gt;" style="ellipse;shape=cloud;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry y="70" width="110" height="70" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-77" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.07;entryY=0.4;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-48" source="IMauDdLWN3BrcHpvlUnd-73" target="IMauDdLWN3BrcHpvlUnd-75">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-83" value="" style="group" vertex="1" connectable="0" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="150" y="104.28" width="90" height="52.86" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-79" value="" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=3;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-83">
          <mxGeometry width="64.10817031070192" height="31.094971177600865" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-80" value="" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=3;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-83">
          <mxGeometry x="8.630609896432702" y="7.255009607466372" width="64.10817031070192" height="31.094971177600865" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-81" value="" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=3;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-83">
          <mxGeometry x="17.261219792865383" y="14.510019214932743" width="64.10817031070192" height="31.094971177600865" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-82" value="" style="shape=cube;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;darkOpacity=0.05;darkOpacity2=0.1;size=3;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-83">
          <mxGeometry x="25.891829689298056" y="21.765028822399117" width="64.10817031070192" height="31.094971177600865" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-74" value="&lt;b&gt;ReID&lt;/b&gt; Feature Vector" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="96.92000000000002" y="50" width="90" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-73" value="" style="shape=or;whiteSpace=wrap;html=1;rotation=90;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="127.45999999999998" width="28.93" height="61.07" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-86" value="&lt;b&gt;Identity Assignment&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="134.68" y="157.14" width="120.65" height="20" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-91" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=-0.055;entryY=0.514;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="IMauDdLWN3BrcHpvlUnd-48" source="IMauDdLWN3BrcHpvlUnd-82" target="IMauDdLWN3BrcHpvlUnd-92">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="277.4204699999998" y="140.78831999999989" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-92" value="" style="triangle;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="274.56" y="108.73" width="50" height="65.72" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-94" value="Kalman Filter" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-48">
          <mxGeometry x="274.56" y="174.45" width="64.56" height="20" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-49" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-16" target="IMauDdLWN3BrcHpvlUnd-31">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-50" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-16" target="IMauDdLWN3BrcHpvlUnd-32">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-51" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-32" target="IMauDdLWN3BrcHpvlUnd-34">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-52" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-42" target="IMauDdLWN3BrcHpvlUnd-34">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-101" value="" style="group" vertex="1" connectable="0" parent="1">
          <mxGeometry x="110" y="910" width="420" height="170" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-99" value="" style="group" vertex="1" connectable="0" parent="IMauDdLWN3BrcHpvlUnd-101">
          <mxGeometry x="-10" width="430" height="170" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-109" value="" style="rounded=1;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="-9.43" y="-20" width="319.43" height="180" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-96" value="" style="shape=cylinder3;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;size=15;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="33.942857142857136" width="67.88571428571427" height="90.66666666666666" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-98" value="" style="shape=cylinder3;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;size=15;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry y="11.333333333333332" width="67.88571428571427" height="90.66666666666666" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-95" value="" style="shape=cylinder3;whiteSpace=wrap;html=1;boundedLbl=1;backgroundOutline=1;size=15;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="45.25714285714285" y="22.666666666666664" width="67.88571428571427" height="90.66666666666666" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-105" value="" style="ellipse;shape=cloud;whiteSpace=wrap;html=1;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="150" y="-3.329999999999959" width="150" height="120" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-107" value="DashBoard&lt;br&gt;&amp;amp;&lt;br&gt;Application" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="194.99758981541686" y="41.6735721484425" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-108" value="&lt;b&gt;Cloud Infra&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-99">
          <mxGeometry x="172.5" y="113.33000000000004" width="105" height="30" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-100" value="&lt;b&gt;DataBase&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="IMauDdLWN3BrcHpvlUnd-101">
          <mxGeometry x="18.857142857142854" y="113.33333333333333" width="56.57142857142857" height="28.333333333333332" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-102" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.145;entryY=0;entryDx=0;entryDy=4.35;entryPerimeter=0;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-44" target="IMauDdLWN3BrcHpvlUnd-95">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-106" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;shape=flexArrow;entryX=0.067;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" target="IMauDdLWN3BrcHpvlUnd-105">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="199.9999999999999" y="985.3601235419467" as="sourcePoint" />
            <mxPoint x="260" y="990" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-112" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.user;" vertex="1" parent="1">
          <mxGeometry x="590" y="888.5" width="51" height="51" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-113" value="&lt;font style=&quot;font-size: 9px;&quot;&gt;User&lt;br&gt;Interfaces&lt;/font&gt;" style="shape=note;whiteSpace=wrap;html=1;backgroundOutline=1;darkOpacity=0.05;size=12;" vertex="1" parent="1">
          <mxGeometry x="520" y="889" width="40" height="50" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-117" value="&lt;font style=&quot;font-size: 9px;&quot;&gt;User&lt;br&gt;Interfaces&lt;/font&gt;" style="shape=note;whiteSpace=wrap;html=1;backgroundOutline=1;darkOpacity=0.05;size=12;" vertex="1" parent="1">
          <mxGeometry x="520" y="960" width="40" height="50" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-118" value="&lt;font style=&quot;font-size: 9px;&quot;&gt;User&lt;br&gt;Interfaces&lt;/font&gt;" style="shape=note;whiteSpace=wrap;html=1;backgroundOutline=1;darkOpacity=0.05;size=12;" vertex="1" parent="1">
          <mxGeometry x="520" y="1030" width="40" height="50" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-119" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.user;" vertex="1" parent="1">
          <mxGeometry x="590" y="959" width="51" height="51" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-120" value="" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#232F3D;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.user;" vertex="1" parent="1">
          <mxGeometry x="590" y="1029" width="51" height="51" as="geometry" />
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-122" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;endArrow=block;startFill=0;endFill=1;" edge="1" parent="1" target="IMauDdLWN3BrcHpvlUnd-118">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="530" y="924" as="targetPoint" />
            <mxPoint x="410" y="980" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-127" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;endArrow=block;startFill=0;endFill=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;" edge="1" parent="1" source="IMauDdLWN3BrcHpvlUnd-109" target="IMauDdLWN3BrcHpvlUnd-117">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="530" y="1065" as="targetPoint" />
            <mxPoint x="420" y="990" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="IMauDdLWN3BrcHpvlUnd-129" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=-0.013;entryY=0.531;entryDx=0;entryDy=0;entryPerimeter=0;endArrow=block;startFill=0;endFill=1;" edge="1" parent="1" target="IMauDdLWN3BrcHpvlUnd-113">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="530" y="995" as="targetPoint" />
            <mxPoint x="410" y="980" as="sourcePoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
