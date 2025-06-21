@import gg.jte.Content

@param Content content

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">

	<link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
	<script type="module" src="/webjars/baloise-design-system/19.2.0/@baloise/ds-core/dist/baloise-design-system/baloise-design-system.esm.js"></script>
	<script nomodule src="/webjars/baloise-design-system/19.2.0/@baloise/ds-core/dist/baloise-design-system/baloise-design-system.js"></script>
</head>

<body>
<h1>Demo App</h1>
<ul>
	<li><a href="/dsmain">DS-Main</a></li>
	<li><a href="/main">Main</a></li>
</ul>
<hr>

${content}
</body>
</html>
