@import jte.HeadingProps
@import org.svenehrke.demo.bdscomponentsdemo.main.MainComponent.Ctx
@import org.bds.greet.GreetCM;

@param Ctx ctx

@template.jte.layout(
content = @`
	<div>Hello ${ctx.name()}</div>
	@template.root()
	@template.org.bds.greet.greet(null)
	@template.org.bds.greet.greet(new GreetCM("Bla"))

	<hr>
	<style>

	</style>
	@template.jte.bal_heading(new HeadingProps(1), @`SSFE H1`)
	@template.jte.bal_heading(new HeadingProps(2), @`SSFE H2`)
	@template.jte.bal_heading(new HeadingProps(3), @`SSFE H3`)
	@template.jte.bal_heading(new HeadingProps(4), @`SSFE H4`)
	@template.jte.bal_heading(new HeadingProps(5), @`SSFE H5`)

	<bal-heading level="h1" color="success">DS H1</bal-heading>
	<bal-heading level="h3" color="success">DS H3</bal-heading>

`)
