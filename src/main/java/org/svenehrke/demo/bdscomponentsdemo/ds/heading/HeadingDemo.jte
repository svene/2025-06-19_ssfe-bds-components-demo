@import org.svenehrke.demo.bdscomponentsdemo.ds.heading.HeadingProps

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

<p>Heading Component Demo</p>
@template.jte.bal_heading(HeadingProps.make(1), @`SSFE H1`)
@template.jte.bal_heading(HeadingProps.make(2), @`SSFE H2`)
@template.jte.bal_heading(HeadingProps.make(3), @`SSFE H3`)
@template.jte.bal_heading(HeadingProps.make(4), @`SSFE H4`)
@template.jte.bal_heading(HeadingProps.make(5), @`SSFE H5`)

</body>
</html>
