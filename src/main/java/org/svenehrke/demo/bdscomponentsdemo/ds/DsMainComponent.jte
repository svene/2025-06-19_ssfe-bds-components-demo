@import org.svenehrke.demo.bdscomponentsdemo.ds.DsMainComponent.Ctx

@param Ctx ctx

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
    <script type="module" src="/webjars/baloise-design-system/19.2.0/@baloise/ds-core/dist/baloise-design-system/baloise-design-system.esm.js"></script>
    <script nomodule src="/webjars/baloise-design-system/19.2.0/@baloise/ds-core/dist/baloise-design-system/baloise-design-system.js"></script>
</head>

<body>
<p>Menu:</p>
<ul>
    <li><a href="/dsmain">BDS Component</a></li>
    <li><a href="/main">JTE Component</a></li>
</ul>
<hr>
<p>Design System Heading Webcomponent:</p>
    <bal-heading level="h1" color="success">DS H1</bal-heading>
    <bal-heading level="h3" color="success">DS H3</bal-heading>

<hr>
<bal-heading id="myheading" level="h1" color="success">DS H1</bal-heading>
<button onclick="document.getElementById('myheading').setAttribute('level', 'h1')">H1</button>
<button onclick="document.getElementById('myheading').setAttribute('level', 'h2')">H2</button>

</body>
</html>
