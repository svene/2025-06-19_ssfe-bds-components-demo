@import org.svenehrke.demo.bdscomponentsdemo.demos.Main.Ctx
@import org.bds.greet.GreetCM


@param Ctx ctx

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
	<script src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.9/dist/cdn.min.js" defer></script>
	<link rel="stylesheet" href="/jte-heading-component.css" /> <%-- See note in css file--%>
</head>

<body>
	@template.jte.menu()
	<hr>

	<hr>
<p>Library PoC components:</p>
<h3></h3>
@template.root()
@template.org.bds.greet.greet(null)
@template.org.bds.greet.greet(new GreetCM("Bla"))

</body>
</html>
