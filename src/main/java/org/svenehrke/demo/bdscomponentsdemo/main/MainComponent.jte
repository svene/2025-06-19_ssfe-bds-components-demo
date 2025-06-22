@import jte.HeadingProps
@import org.svenehrke.demo.bdscomponentsdemo.main.MainComponent.Ctx
@import org.bds.greet.GreetCM;


@param Ctx ctx

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/webjars/baloise-design-system/19.2.0/@baloise/ds-styles/css/all.min.css" />
	<link rel="stylesheet" href="/jte-heading-demo.css" /> <%-- See note in css file--%>
</head>

<body>
<p>Menu:</p>
<ul>
	<li><a href="/dsmain">BDS Component</a></li>
	<li><a href="/main">JTE Component</a></li>
</ul>
	<hr>
	<p>JTE Heading Component:</p>
	@template.jte.bal_heading(new HeadingProps(1), @`SSFE H1`)
	@template.jte.bal_heading(new HeadingProps(2), @`SSFE H2`)
	@template.jte.bal_heading(new HeadingProps(3), @`SSFE H3`)
	@template.jte.bal_heading(new HeadingProps(4), @`SSFE H4`)
	@template.jte.bal_heading(new HeadingProps(5), @`SSFE H5`)

<hr>
<p>Library PoC components:</p>
<h3></h3>
@template.root()
@template.org.bds.greet.greet(null)
@template.org.bds.greet.greet(new GreetCM("Bla"))

</body>
</html>
