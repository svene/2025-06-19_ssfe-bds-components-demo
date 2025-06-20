@import org.svenehrke.demo.bdscomponentsdemo.main.MainComponent.Ctx
@import org.bds.greet.GreetCM;

@param Ctx ctx

@template.jte.layout(
content = @`
	<div>Hello ${ctx.name()}</div>
	@template.root()
	@template.org.bds.greet.greet(null)
	@template.org.bds.greet.greet(new GreetCM("Bla"))

`)
