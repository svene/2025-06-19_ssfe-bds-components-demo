@import gg.jte.Content
@import org.svenehrke.demo.bdscomponentsdemo.ds.heading.HeadingProps

@param HeadingProps props
@param Content content

@if(2 == props.level())
    <h2 class="${props.classes()}">${content}</h2>
@elseif(3 == props.level())
    <h3 class="${props.classes()}">${content}</h3>
@elseif(4 == props.level())
    <h4 class="${props.classes()}">${content}</h4>
@elseif(5 == props.level())
    <h5 class="${props.classes()}">${content}</h5>
@elseif(1 == props.level())
    <h1 class="${props.classes()}">${content}</h1>
@endif
