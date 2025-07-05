@import org.svenehrke.demo.bdscomponentsdemo.minicomponent.MiniProps

@param MiniProps props

<div x-data="{ fontsize: '${props.fontSize()}'}">
<div style="color: red" :style="{'font-size': fontsize}">hallo du da</div>
    <button x-on:click="fontsize = '10px'">10</button>
    <button x-on:click="fontsize = '20px'">20</button>
</div>
