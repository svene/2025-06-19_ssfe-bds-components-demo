@import org.svenehrke.demo.bdscomponentsdemo.demos.dsdemos.dsheading.DsHeadingDemo
@import org.svenehrke.demo.bdscomponentsdemo.demos.heading.HeadingDemo
@import org.svenehrke.demo.bdscomponentsdemo.demos.heading2.Heading2Demo
@import org.svenehrke.demo.bdscomponentsdemo.demos.libcmpdemo.LibCmpDemo
@import org.svenehrke.demo.bdscomponentsdemo.demos.componentspocs.cmppoc01.CmpPoc01Demo

<p>Menu:</p>
<ul>
    <li><a href="/main">Home</a></li>
    <li><a href="${DsHeadingDemo.URL}">${DsHeadingDemo.TITLE}</a></li>
    <li><a href="${HeadingDemo.URL}">${HeadingDemo.TITLE}</a></li>
    <li><a href="${Heading2Demo.URL}">${Heading2Demo.TITLE}</a></li>
    <li><a href="${LibCmpDemo.URL}">${LibCmpDemo.TITLE}</a></li>
    <li><a href="${CmpPoc01Demo.URL}">${CmpPoc01Demo.TITLE}</a></li>
</ul>
