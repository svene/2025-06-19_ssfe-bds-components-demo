@import org.svenehrke.demo.bdscomponentsdemo.ds.heading.HeadingProps
@import org.svenehrke.demo.bdscomponentsdemo.main.MainComponent.Ctx
@import org.bds.greet.GreetCM
@import org.svenehrke.demo.bdscomponentsdemo.minicomponent.MiniProps;


@param Ctx ctx

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
	<link rel="stylesheet" href="/jte-heading-component.css" /> <%-- See note in css file--%>
	<script src="https://cdn.jsdelivr.net/npm/alpinejs@3.14.9/dist/cdn.min.js" defer></script>
</head>

<body>
<p>Menu:</p>
<ul>
	<li><a href="/dsmain">BDS Component</a></li>
	<li><a href="/main">JTE Component</a></li>
</ul>
	<hr>
	<p>JTE Heading Component</p>
	@template.jte.bal_heading(HeadingProps.make(1), @`SSFE H1`)
	@template.jte.bal_heading(HeadingProps.make(2), @`SSFE H2`)
	@template.jte.bal_heading(HeadingProps.make(3), @`SSFE H3`)
	@template.jte.bal_heading(HeadingProps.make(4), @`SSFE H4`)
	@template.jte.bal_heading(HeadingProps.make(5), @`SSFE H5`)

<hr>
<p>Mini-Component:</p>
<h3></h3>
@template.jte.minicomponent(new MiniProps("20px"))

@template.jte.minicomponent(new MiniProps("10px"))


<hr>
<p>Library PoC components:</p>
<h3></h3>
@template.root()
@template.org.bds.greet.greet(null)
@template.org.bds.greet.greet(new GreetCM("Bla"))

</body>
</html>
