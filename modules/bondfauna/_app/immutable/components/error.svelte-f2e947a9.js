import{S as E,i as S,s as q,k as b,q as f,a as x,l as _,m as d,r as g,h as p,c as C,b as l,K as h,u as v,C as $,L as k}from"../chunks/index-a80103fd.js";import{s as y}from"../chunks/singletons-2ea7a152.js";const H=()=>{const s=y;return{page:{subscribe:s.page.subscribe},navigating:{subscribe:s.navigating.subscribe},updated:s.updated}},K={subscribe(s){return H().page.subscribe(s)}};function L(s){let t,r=s[0].status+"",o,n,i,c=s[0].error?.message+"",u;return{c(){t=b("h1"),o=f(r),n=x(),i=b("p"),u=f(c)},l(e){t=_(e,"H1",{});var a=d(t);o=g(a,r),a.forEach(p),n=C(e),i=_(e,"P",{});var m=d(i);u=g(m,c),m.forEach(p)},m(e,a){l(e,t,a),h(t,o),l(e,n,a),l(e,i,a),h(i,u)},p(e,[a]){a&1&&r!==(r=e[0].status+"")&&v(o,r),a&1&&c!==(c=e[0].error?.message+"")&&v(u,c)},i:$,o:$,d(e){e&&p(t),e&&p(n),e&&p(i)}}}function P(s,t,r){let o;return k(s,K,n=>r(0,o=n)),[o]}let z=class extends E{constructor(t){super(),S(this,t,P,L,q,{})}};export{z as default};
