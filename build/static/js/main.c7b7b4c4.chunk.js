(this.webpackJsonpmyapp1=this.webpackJsonpmyapp1||[]).push([[0],{124:function(e,t,n){},151:function(e,t,n){"use strict";n.r(t);var a=n(0),c=n.n(a),r=n(34),i=n.n(r),o=(n(124),n(15)),s=n(211),l=n(215),j=n(214),d=n(216),b=n(68),u=n(204),x=n(97),p=n.n(x),h=n(213),O=n(209),f=n(208),m=n(203),g=n(207),v=n(2),y=[],w=["Profile","Account","Dashboard","Logout"],k=function(){var e=a.useState(null),t=Object(o.a)(e,2),n=t[0],c=t[1],r=a.useState(null),i=Object(o.a)(r,2),x=i[0],k=i[1],C=function(){c(null)};return Object(v.jsx)(s.a,{position:"static",children:Object(v.jsx)(h.a,{maxWidth:"xl",children:Object(v.jsxs)(j.a,{disableGutters:!0,children:[Object(v.jsx)(b.a,{variant:"h6",noWrap:!0,component:"div",sx:{mr:2,display:{xs:"none",md:"flex"}},children:"FiananceFirst"}),Object(v.jsxs)(l.a,{sx:{flexGrow:1,display:{xs:"flex",md:"none"}},children:[Object(v.jsx)(d.a,{size:"large","aria-label":"account of current user","aria-controls":"menu-appbar","aria-haspopup":"true",onClick:function(e){c(e.currentTarget)},color:"inherit",children:Object(v.jsx)(p.a,{})}),Object(v.jsx)(u.a,{id:"menu-appbar",anchorEl:n,anchorOrigin:{vertical:"bottom",horizontal:"left"},keepMounted:!0,transformOrigin:{vertical:"top",horizontal:"left"},open:Boolean(n),onClose:C,sx:{display:{xs:"block",md:"none"}},children:y.map((function(e){return Object(v.jsx)(g.a,{onClick:C,children:Object(v.jsx)(b.a,{textAlign:"center",children:e})},e)}))})]}),Object(v.jsx)(b.a,{variant:"h6",noWrap:!0,component:"div",sx:{flexGrow:1,display:{xs:"flex",md:"none"}},children:"LOGO"}),Object(v.jsx)(l.a,{sx:{flexGrow:1,display:{xs:"none",md:"flex"}},children:y.map((function(e){return Object(v.jsx)(f.a,{onClick:C,sx:{my:2,color:"white",display:"block"},children:e},e)}))}),Object(v.jsxs)(l.a,{sx:{flexGrow:0},children:[Object(v.jsx)(m.a,{title:"Open settings",children:Object(v.jsx)(d.a,{onClick:function(e){k(e.currentTarget)},sx:{p:0},children:Object(v.jsx)(O.a,{children:"B"})})}),Object(v.jsx)(u.a,{sx:{mt:"45px"},id:"menu-appbar",anchorEl:x,anchorOrigin:{vertical:"top",horizontal:"right"},keepMounted:!0,transformOrigin:{vertical:"top",horizontal:"right"},open:Boolean(x),onClose:function(){k(null)},children:w.map((function(e){return Object(v.jsx)(g.a,{onClick:C,children:Object(v.jsx)(b.a,{textAlign:"center",children:e})},e)}))})]})]})})})},C=n(25),A=n(5),S=n(212),F=n(210),G=n(64),B=n(217),D=n(218),E=n(219),L=n(220),M=n(221),z=n(36),J=n(101),T=n.n(J),W=n(102),N=n.n(W),P=n(100),I=n.n(P),_=n(62),H=n.n(_),U=n(18),Y=n(98);function $(e){var t=e.index,n=Object(a.useState)([]),c=Object(o.a)(n,2),r=c[0],i=c[1],s=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],l=["balance","deposit","withdrawal","retirement","net_worth","assests"],j={responsive:!0,plugins:{legend:{position:"top"},title:{display:!0,text:"".concat(l[t]," history")}},scales:{y:{min:0},x:{}}};return Object(a.useEffect)((function(){var e=[];H.a.post("http://financeapp123.herokuapp.com/api/transactions/sum?type=".concat(l[t])).then((function(n){s.map((function(a,c){return"retirement"===l[t]?e.push(1.006*(n.data[a]+e[c-1]||0)):e.push(n.data[a])})),console.log(e,l[t]),i(e)})).catch((function(e){console.log(e)}))}),[]),Object(v.jsxs)("div",{children:[Object(v.jsx)(Y.a,{options:j,data:{labels:s,datasets:[{label:l[t],data:Object.values(r),borderColor:"rgb(255, 99, 132)",backgroundColor:"rgba(255, 99, 132, 0.5)"}]}}),Object(v.jsx)("button",{onClick:function(){console.log(r)},children:" button"})]})}function q(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"",t=new Date,n=t.getDate(),a=t.getMonth()+1,c=t.getFullYear();return"".concat(a).concat(e,"0".concat(n)).concat(e).concat(c)}U.d.register(U.c,U.i,U.k,U.h,U.o,U.p,U.f);var K=n(222),Q=n(206),R=n(202),V=n(223),X=n(99);function Z(e){var t=e.index,n=Object(a.useState)([]),c=Object(o.a)(n,2),r=c[0],i=c[1],s=["balance","deposit","withdrawal","retirement","net_worth"];return Object(a.useEffect)((function(){var e=[];H.a.post("http://financeapp123.herokuapp.com/api/transactions/limit?type=".concat(s[t],"&limit=20")).then((function(t){t.data.map((function(t){return e.push(t)})),i(e)})).catch((function(e){console.log(e)}))}),[]),console.log(r),Object(v.jsx)(K.a,{sx:{width:"100%",bgcolor:"background.paper",position:"relative",overflow:"auto",maxHeight:200,"& ul":{padding:0}},subheader:Object(v.jsx)("li",{}),children:[0].map((function(e){return Object(v.jsx)("li",{children:Object(v.jsxs)("ul",{children:[Object(v.jsx)(V.a,{children:"".concat(s[t]," by date")}),r.map((function(e){return Object(v.jsx)(Q.a,{children:Object(v.jsx)(R.a,{primary:" Date:".concat(e.date," Amount: $").concat(e[s[t]])})},Object(X.v4)())}))]})},"section-".concat(e))}))})}var ee=["expand"],te=Object(A.a)((function(e){e.expand;var t=Object(G.a)(e,ee);return Object(v.jsx)(d.a,Object(C.a)({},t))}))((function(e){var t=e.theme;return{transform:e.expand?"rotate(180deg)":"rotate(0deg)",marginLeft:"auto",transition:t.transitions.create("transform",{duration:t.transitions.duration.shortest})}})),ne=["balance","deposits","withdrawls","401k","Net Worth"];function ae(e){var t,n=e.index,c=Object(a.useState)(!1),r=Object(o.a)(c,2),i=r[0],s=r[1];return Object(v.jsxs)(B.a,{children:[Object(v.jsx)(D.a,{avatar:Object(v.jsx)(O.a,{sx:{bgcolor:z.a[500]},"aria-label":"recipe",children:"B"}),action:Object(v.jsx)(d.a,{"aria-label":"settings",children:Object(v.jsx)(I.a,{})}),title:(t=ne[n],t.charAt(0).toUpperCase()+t.slice(1)),subheader:q("-")}),Object(v.jsx)($,{index:n}),Object(v.jsx)(E.a,{children:Object(v.jsx)(b.a,{variant:"body2",color:"text.secondary"})}),Object(v.jsxs)(L.a,{disableSpacing:!0,children:[Object(v.jsx)(d.a,{"aria-label":"share",children:Object(v.jsx)(T.a,{})}),Object(v.jsx)(te,{expand:i,onClick:function(){s(!i)},"aria-expanded":i,"aria-label":"show more",children:Object(v.jsx)(N.a,{})})]}),Object(v.jsx)(M.a,{in:i,timeout:"auto",unmountOnExit:!0,children:Object(v.jsxs)(E.a,{children:[Object(v.jsx)(b.a,{children:"Last 20 Transactions"}),Object(v.jsx)(Z,{index:n})]})})]})}var ce=Object(A.a)(S.a)((function(e){var t=e.theme;return Object(C.a)(Object(C.a)({},t.typography.body2),{},{padding:t.spacing(2),textAlign:"center",color:t.palette.text.secondary})}));function re(){return Object(v.jsx)(l.a,{m:"10px",sx:{flexGrow:1},children:Object(v.jsx)(F.a,{container:!0,spacing:{xs:2,md:3},columns:{xs:2,sm:8,md:12},children:Array.from(Array(5)).map((function(e,t){return Object(v.jsx)(F.a,{item:!0,xs:2,sm:4,md:4,children:Object(v.jsx)(ce,{children:Object(v.jsx)(ae,{index:t})})},t)}))})})}var ie=function(){return Object(v.jsxs)("div",{className:"App",children:[Object(v.jsx)(k,{}),Object(v.jsx)(re,{})]})},oe=function(e){e&&e instanceof Function&&n.e(3).then(n.bind(null,224)).then((function(t){var n=t.getCLS,a=t.getFID,c=t.getFCP,r=t.getLCP,i=t.getTTFB;n(e),a(e),c(e),r(e),i(e)}))};i.a.render(Object(v.jsx)(c.a.StrictMode,{children:Object(v.jsx)(ie,{})}),document.getElementById("root")),oe()}},[[151,1,2]]]);
//# sourceMappingURL=main.c7b7b4c4.chunk.js.map