@import org.svenehrke.demo.bdscomponentsdemo.main.MainComponent.Ctx

@param Ctx ctx

@template.jte.layout(
content = @`
	<div>Hello ${ctx.name()}</div>

`)
