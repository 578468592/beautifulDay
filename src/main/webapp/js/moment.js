(function(t){function e(){return{empty:!1,unusedTokens:[],unusedInput:[],overflow:-2,charsLeftOver:0,nullInput:!1,invalidMonth:null,invalidFormat:!1,userInvalidated:!1,iso:!1}}function n(t,e){return function(n){return d(t.call(this,n),e)}}function s(t,e){return function(n){return this.lang().ordinal(t.call(this,n),e)}}function r(){}function i(t){D(t),o(this,t)}function a(t){var e=y(t),n=e.year||0,s=e.month||0,r=e.week||0,i=e.day||0,a=e.hour||0,o=e.minute||0,u=e.second||0,h=e.millisecond||0;this._milliseconds=+h+1e3*u+6e4*o+36e5*a,this._days=+i+7*r,this._months=+s+12*n,this._data={},this._bubble()}function o(t,e){for(var n in e)e.hasOwnProperty(n)&&(t[n]=e[n]);return e.hasOwnProperty("toString")&&(t.toString=e.toString),e.hasOwnProperty("valueOf")&&(t.valueOf=e.valueOf),t}function u(t){var e,n={};for(e in t)t.hasOwnProperty(e)&&yt.hasOwnProperty(e)&&(n[e]=t[e]);return n}function h(t){return t<0?Math.ceil(t):Math.floor(t)}function d(t,e,n){for(var s=""+Math.abs(t),r=t>=0;s.length<e;)s="0"+s;return(r?n?"+":"":"-")+s}function f(t,e,n,s){var r,i,a=e._milliseconds,o=e._days,u=e._months;a&&t._d.setTime(+t._d+a*n),(o||u)&&(r=t.minute(),i=t.hour()),o&&t.date(t.date()+o*n),u&&t.month(t.month()+u*n),a&&!s&&st.updateOffset(t),(o||u)&&(t.minute(r),t.hour(i))}function c(t){return"[object Array]"===Object.prototype.toString.call(t)}function l(t){return"[object Date]"===Object.prototype.toString.call(t)||t instanceof Date}function _(t,e,n){var s,r=Math.min(t.length,e.length),i=Math.abs(t.length-e.length),a=0;for(s=0;s<r;s++)(n&&t[s]!==e[s]||!n&&g(t[s])!==g(e[s]))&&a++;return a+i}function m(t){if(t){var e=t.toLowerCase().replace(/(.)s$/,"$1");t=$t[t]||Vt[e]||e}return t}function y(t){var e,n,s={};for(n in t)t.hasOwnProperty(n)&&(e=m(n),e&&(s[e]=t[n]));return s}function p(e){var n,s;if(0===e.indexOf("week"))n=7,s="day";else{if(0!==e.indexOf("month"))return;n=12,s="month"}st[e]=function(r,i){var a,o,u=st.fn._lang[e],h=[];if("number"==typeof r&&(i=r,r=t),o=function(t){var e=st().utc().set(s,t);return u.call(st.fn._lang,e,r||"")},null!=i)return o(i);for(a=0;a<n;a++)h.push(o(a));return h}}function g(t){var e=+t,n=0;return 0!==e&&isFinite(e)&&(n=e>=0?Math.floor(e):Math.ceil(e)),n}function Y(t,e){return new Date(Date.UTC(t,e+1,0)).getUTCDate()}function w(t){return M(t)?366:365}function M(t){return t%4===0&&t%100!==0||t%400===0}function D(t){var e;t._a&&t._pf.overflow===-2&&(e=t._a[ht]<0||t._a[ht]>11?ht:t._a[dt]<1||t._a[dt]>Y(t._a[ut],t._a[ht])?dt:t._a[ft]<0||t._a[ft]>23?ft:t._a[ct]<0||t._a[ct]>59?ct:t._a[lt]<0||t._a[lt]>59?lt:t._a[_t]<0||t._a[_t]>999?_t:-1,t._pf._overflowDayOfYear&&(e<ut||e>dt)&&(e=dt),t._pf.overflow=e)}function v(t){return null==t._isValid&&(t._isValid=!isNaN(t._d.getTime())&&t._pf.overflow<0&&!t._pf.empty&&!t._pf.invalidMonth&&!t._pf.nullInput&&!t._pf.invalidFormat&&!t._pf.userInvalidated,t._strict&&(t._isValid=t._isValid&&0===t._pf.charsLeftOver&&0===t._pf.unusedTokens.length)),t._isValid}function k(t){return t?t.toLowerCase().replace("_","-"):t}function b(t,e){return e._isUTC?st(t).zone(e._offset||0):st(t).local()}function S(t,e){return e.abbr=t,mt[t]||(mt[t]=new r),mt[t].set(e),mt[t]}function T(t){delete mt[t]}function O(t){var e,n,s,r,i=0,a=function(t){if(!mt[t]&&pt)try{require("./lang/"+t)}catch(t){}return mt[t]};if(!t)return st.fn._lang;if(!c(t)){if(n=a(t))return n;t=[t]}for(;i<t.length;){for(r=k(t[i]).split("-"),e=r.length,s=k(t[i+1]),s=s?s.split("-"):null;e>0;){if(n=a(r.slice(0,e).join("-")))return n;if(s&&s.length>=e&&_(r,s,!0)>=e-1)break;e--}i++}return st.fn._lang}function G(t){return t.match(/\[[\s\S]/)?t.replace(/^\[|\]$/g,""):t.replace(/\\/g,"")}function W(t){var e,n,s=t.match(Mt);for(e=0,n=s.length;e<n;e++)Bt[s[e]]?s[e]=Bt[s[e]]:s[e]=G(s[e]);return function(r){var i="";for(e=0;e<n;e++)i+=s[e]instanceof Function?s[e].call(r,t):s[e];return i}}function C(t,e){return t.isValid()?(e=F(e,t.lang()),qt[e]||(qt[e]=W(e)),qt[e](t)):t.lang().invalidDate()}function F(t,e){function n(t){return e.longDateFormat(t)||t}var s=5;for(Dt.lastIndex=0;s>=0&&Dt.test(t);)t=t.replace(Dt,n),Dt.lastIndex=0,s-=1;return t}function z(t,e){var n,s=e._strict;switch(t){case"DDDD":return Lt;case"YYYY":case"GGGG":case"gggg":return s?Ut:bt;case"Y":case"G":case"g":return Ht;case"YYYYYY":case"YYYYY":case"GGGGG":case"ggggg":return s?Pt:St;case"S":if(s)return Ft;case"SS":if(s)return zt;case"SSS":if(s)return Lt;case"DDD":return kt;case"MMM":case"MMMM":case"dd":case"ddd":case"dddd":return Ot;case"a":case"A":return O(e._l)._meridiemParse;case"X":return Ct;case"Z":case"ZZ":return Gt;case"T":return Wt;case"SSSS":return Tt;case"MM":case"DD":case"YY":case"GG":case"gg":case"HH":case"hh":case"mm":case"ss":case"ww":case"WW":return s?zt:vt;case"M":case"D":case"d":case"H":case"h":case"m":case"s":case"w":case"W":case"e":case"E":return vt;default:return n=new RegExp(A(Z(t.replace("\\","")),"i"))}}function L(t){t=t||"";var e=t.match(Gt)||[],n=e[e.length-1]||[],s=(n+"").match(Et)||["-",0,0],r=+(60*s[1])+g(s[2]);return"+"===s[0]?-r:r}function U(t,e,n){var s,r=n._a;switch(t){case"M":case"MM":null!=e&&(r[ht]=g(e)-1);break;case"MMM":case"MMMM":s=O(n._l).monthsParse(e),null!=s?r[ht]=s:n._pf.invalidMonth=e;break;case"D":case"DD":null!=e&&(r[dt]=g(e));break;case"DDD":case"DDDD":null!=e&&(n._dayOfYear=g(e));break;case"YY":r[ut]=g(e)+(g(e)>68?1900:2e3);break;case"YYYY":case"YYYYY":case"YYYYYY":r[ut]=g(e);break;case"a":case"A":n._isPm=O(n._l).isPM(e);break;case"H":case"HH":case"h":case"hh":r[ft]=g(e);break;case"m":case"mm":r[ct]=g(e);break;case"s":case"ss":r[lt]=g(e);break;case"S":case"SS":case"SSS":case"SSSS":r[_t]=g(1e3*("0."+e));break;case"X":n._d=new Date(1e3*parseFloat(e));break;case"Z":case"ZZ":n._useUTC=!0,n._tzm=L(e);break;case"w":case"ww":case"W":case"WW":case"d":case"dd":case"ddd":case"dddd":case"e":case"E":t=t.substr(0,1);case"gg":case"gggg":case"GG":case"GGGG":case"GGGGG":t=t.substr(0,2),e&&(n._w=n._w||{},n._w[t]=e)}}function P(t){var e,n,s,r,i,a,o,u,h,d,f=[];if(!t._d){for(s=x(t),t._w&&null==t._a[dt]&&null==t._a[ht]&&(i=function(e){var n=parseInt(e,10);return e?e.length<3?n>68?1900+n:2e3+n:n:null==t._a[ut]?st().weekYear():t._a[ut]},a=t._w,null!=a.GG||null!=a.W||null!=a.E?o=J(i(a.GG),a.W||1,a.E,4,1):(u=O(t._l),h=null!=a.d?q(a.d,u):null!=a.e?parseInt(a.e,10)+u._week.dow:0,d=parseInt(a.w,10)||1,null!=a.d&&h<u._week.dow&&d++,o=J(i(a.gg),d,h,u._week.doy,u._week.dow)),t._a[ut]=o.year,t._dayOfYear=o.dayOfYear),t._dayOfYear&&(r=null==t._a[ut]?s[ut]:t._a[ut],t._dayOfYear>w(r)&&(t._pf._overflowDayOfYear=!0),n=V(r,0,t._dayOfYear),t._a[ht]=n.getUTCMonth(),t._a[dt]=n.getUTCDate()),e=0;e<3&&null==t._a[e];++e)t._a[e]=f[e]=s[e];for(;e<7;e++)t._a[e]=f[e]=null==t._a[e]?2===e?1:0:t._a[e];f[ft]+=g((t._tzm||0)/60),f[ct]+=g((t._tzm||0)%60),t._d=(t._useUTC?V:$).apply(null,f)}}function H(t){var e;t._d||(e=y(t._i),t._a=[e.year,e.month,e.day,e.hour,e.minute,e.second,e.millisecond],P(t))}function x(t){var e=new Date;return t._useUTC?[e.getUTCFullYear(),e.getUTCMonth(),e.getUTCDate()]:[e.getFullYear(),e.getMonth(),e.getDate()]}function I(t){t._a=[],t._pf.empty=!0;var e,n,s,r,i,a=O(t._l),o=""+t._i,u=o.length,h=0;for(s=F(t._f,a).match(Mt)||[],e=0;e<s.length;e++)r=s[e],n=(o.match(z(r,t))||[])[0],n&&(i=o.substr(0,o.indexOf(n)),i.length>0&&t._pf.unusedInput.push(i),o=o.slice(o.indexOf(n)+n.length),h+=n.length),Bt[r]?(n?t._pf.empty=!1:t._pf.unusedTokens.push(r),U(r,n,t)):t._strict&&!n&&t._pf.unusedTokens.push(r);t._pf.charsLeftOver=u-h,o.length>0&&t._pf.unusedInput.push(o),t._isPm&&t._a[ft]<12&&(t._a[ft]+=12),t._isPm===!1&&12===t._a[ft]&&(t._a[ft]=0),P(t),D(t)}function Z(t){return t.replace(/\\(\[)|\\(\])|\[([^\]\[]*)\]|\\(.)/g,function(t,e,n,s,r){return e||n||s||r})}function A(t){return t.replace(/[-\/\\^$*+?.()|[\]{}]/g,"\\$&")}function E(t){var n,s,r,i,a;if(0===t._f.length)return t._pf.invalidFormat=!0,void(t._d=new Date(NaN));for(i=0;i<t._f.length;i++)a=0,n=o({},t),n._pf=e(),n._f=t._f[i],I(n),v(n)&&(a+=n._pf.charsLeftOver,a+=10*n._pf.unusedTokens.length,n._pf.score=a,(null==r||a<r)&&(r=a,s=n));o(t,s||n)}function N(t){var e,n,s=t._i,r=xt.exec(s);if(r){for(t._pf.iso=!0,e=0,n=Zt.length;e<n;e++)if(Zt[e][1].exec(s)){t._f=Zt[e][0]+(r[6]||" ");break}for(e=0,n=At.length;e<n;e++)if(At[e][1].exec(s)){t._f+=At[e][0];break}s.match(Gt)&&(t._f+="Z"),I(t)}else t._d=new Date(s)}function j(e){var n=e._i,s=gt.exec(n);n===t?e._d=new Date:s?e._d=new Date((+s[1])):"string"==typeof n?N(e):c(n)?(e._a=n.slice(0),P(e)):l(n)?e._d=new Date((+n)):"object"==typeof n?H(e):e._d=new Date(n)}function $(t,e,n,s,r,i,a){var o=new Date(t,e,n,s,r,i,a);return t<1970&&o.setFullYear(t),o}function V(t){var e=new Date(Date.UTC.apply(null,arguments));return t<1970&&e.setUTCFullYear(t),e}function q(t,e){if("string"==typeof t)if(isNaN(t)){if(t=e.weekdaysParse(t),"number"!=typeof t)return null}else t=parseInt(t,10);return t}function X(t,e,n,s,r){return r.relativeTime(e||1,!!n,t,s)}function R(t,e,n){var s=ot(Math.abs(t)/1e3),r=ot(s/60),i=ot(r/60),a=ot(i/24),o=ot(a/365),u=s<45&&["s",s]||1===r&&["m"]||r<45&&["mm",r]||1===i&&["h"]||i<22&&["hh",i]||1===a&&["d"]||a<=25&&["dd",a]||a<=45&&["M"]||a<345&&["MM",ot(a/30)]||1===o&&["y"]||["yy",o];return u[2]=e,u[3]=t>0,u[4]=n,X.apply({},u)}function B(t,e,n){var s,r=n-e,i=n-t.day();return i>r&&(i-=7),i<r-7&&(i+=7),s=st(t).add("d",i),{week:Math.ceil(s.dayOfYear()/7),year:s.year()}}function J(t,e,n,s,r){var i,a,o=V(t,0,1).getUTCDay();return n=null!=n?n:r,i=r-o+(o>s?7:0)-(o<r?7:0),a=7*(e-1)+(n-r)+i+1,{year:a>0?t:t-1,dayOfYear:a>0?a:w(t-1)+a}}function Q(t){var e=t._i,n=t._f;return null===e?st.invalid({nullInput:!0}):("string"==typeof e&&(t._i=e=O().preparse(e)),st.isMoment(e)?(t=u(e),t._d=new Date((+e._d))):n?c(n)?E(t):I(t):j(t),new i(t))}function K(t,e){st.fn[t]=st.fn[t+"s"]=function(t){var n=this._isUTC?"UTC":"";return null!=t?(this._d["set"+n+e](t),st.updateOffset(this),this):this._d["get"+n+e]()}}function tt(t){st.duration.fn[t]=function(){return this._data[t]}}function et(t,e){st.duration.fn["as"+t]=function(){return+this/e}}function nt(t){var e=!1,n=st;"undefined"==typeof ender&&(t?(at.moment=function(){return!e&&console&&console.warn&&(e=!0),n.apply(null,arguments)},o(at.moment,n)):at.moment=st)}for(var st,rt,it="2.5.1",at=this,ot=Math.round,ut=0,ht=1,dt=2,ft=3,ct=4,lt=5,_t=6,mt={},yt={_isAMomentObject:null,_i:null,_f:null,_l:null,_strict:null,_isUTC:null,_offset:null,_pf:null,_lang:null},pt="undefined"!=typeof module&&module.exports&&"undefined"!=typeof require,gt=/^\/?Date\((\-?\d+)/i,Yt=/(\-)?(?:(\d*)\.)?(\d+)\:(\d+)(?:\:(\d+)\.?(\d{3})?)?/,wt=/^(-)?P(?:(?:([0-9,.]*)Y)?(?:([0-9,.]*)M)?(?:([0-9,.]*)D)?(?:T(?:([0-9,.]*)H)?(?:([0-9,.]*)M)?(?:([0-9,.]*)S)?)?|([0-9,.]*)W)$/,Mt=/(\[[^\[]*\])|(\\)?(Mo|MM?M?M?|Do|DDDo|DD?D?D?|ddd?d?|do?|w[o|w]?|W[o|W]?|YYYYYY|YYYYY|YYYY|YY|gg(ggg?)?|GG(GGG?)?|e|E|a|A|hh?|HH?|mm?|ss?|S{1,4}|X|zz?|ZZ?|.)/g,Dt=/(\[[^\[]*\])|(\\)?(LT|LL?L?L?|l{1,4})/g,vt=/\d\d?/,kt=/\d{1,3}/,bt=/\d{1,4}/,St=/[+\-]?\d{1,6}/,Tt=/\d+/,Ot=/[0-9]*['a-z\u00A0-\u05FF\u0700-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+|[\u0600-\u06FF\/]+(\s*?[\u0600-\u06FF]+){1,2}/i,Gt=/Z|[\+\-]\d\d:?\d\d/gi,Wt=/T/i,Ct=/[\+\-]?\d+(\.\d{1,3})?/,Ft=/\d/,zt=/\d\d/,Lt=/\d{3}/,Ut=/\d{4}/,Pt=/[+-]?\d{6}/,Ht=/[+-]?\d+/,xt=/^\s*(?:[+-]\d{6}|\d{4})-(?:(\d\d-\d\d)|(W\d\d$)|(W\d\d-\d)|(\d\d\d))((T| )(\d\d(:\d\d(:\d\d(\.\d+)?)?)?)?([\+\-]\d\d(?::?\d\d)?|\s*Z)?)?$/,It="YYYY-MM-DDTHH:mm:ssZ",Zt=[["YYYYYY-MM-DD",/[+-]\d{6}-\d{2}-\d{2}/],["YYYY-MM-DD",/\d{4}-\d{2}-\d{2}/],["GGGG-[W]WW-E",/\d{4}-W\d{2}-\d/],["GGGG-[W]WW",/\d{4}-W\d{2}/],["YYYY-DDD",/\d{4}-\d{3}/]],At=[["HH:mm:ss.SSSS",/(T| )\d\d:\d\d:\d\d\.\d{1,3}/],["HH:mm:ss",/(T| )\d\d:\d\d:\d\d/],["HH:mm",/(T| )\d\d:\d\d/],["HH",/(T| )\d\d/]],Et=/([\+\-]|\d\d)/gi,Nt="Date|Hours|Minutes|Seconds|Milliseconds".split("|"),jt={Milliseconds:1,Seconds:1e3,Minutes:6e4,Hours:36e5,Days:864e5,Months:2592e6,Years:31536e6},$t={ms:"millisecond",s:"second",m:"minute",h:"hour",d:"day",D:"date",w:"week",W:"isoWeek",M:"month",y:"year",DDD:"dayOfYear",e:"weekday",E:"isoWeekday",gg:"weekYear",GG:"isoWeekYear"},Vt={dayofyear:"dayOfYear",isoweekday:"isoWeekday",isoweek:"isoWeek",weekyear:"weekYear",isoweekyear:"isoWeekYear"},qt={},Xt="DDD w W M D d".split(" "),Rt="M D H h m s w W".split(" "),Bt={M:function(){return this.month()+1},MMM:function(t){return this.lang().monthsShort(this,t)},MMMM:function(t){return this.lang().months(this,t)},D:function(){return this.date()},DDD:function(){return this.dayOfYear()},d:function(){return this.day()},dd:function(t){return this.lang().weekdaysMin(this,t)},ddd:function(t){return this.lang().weekdaysShort(this,t)},dddd:function(t){return this.lang().weekdays(this,t)},w:function(){return this.week()},W:function(){return this.isoWeek()},YY:function(){return d(this.year()%100,2)},YYYY:function(){return d(this.year(),4)},YYYYY:function(){return d(this.year(),5)},YYYYYY:function(){var t=this.year(),e=t>=0?"+":"-";return e+d(Math.abs(t),6)},gg:function(){return d(this.weekYear()%100,2)},gggg:function(){return d(this.weekYear(),4)},ggggg:function(){return d(this.weekYear(),5)},GG:function(){return d(this.isoWeekYear()%100,2)},GGGG:function(){return d(this.isoWeekYear(),4)},GGGGG:function(){return d(this.isoWeekYear(),5)},e:function(){return this.weekday()},E:function(){return this.isoWeekday()},a:function(){return this.lang().meridiem(this.hours(),this.minutes(),!0)},A:function(){return this.lang().meridiem(this.hours(),this.minutes(),!1)},H:function(){return this.hours()},h:function(){return this.hours()%12||12},m:function(){return this.minutes()},s:function(){return this.seconds()},S:function(){return g(this.milliseconds()/100)},SS:function(){return d(g(this.milliseconds()/10),2)},SSS:function(){return d(this.milliseconds(),3)},SSSS:function(){return d(this.milliseconds(),3)},Z:function(){var t=-this.zone(),e="+";return t<0&&(t=-t,e="-"),e+d(g(t/60),2)+":"+d(g(t)%60,2)},ZZ:function(){var t=-this.zone(),e="+";return t<0&&(t=-t,e="-"),e+d(g(t/60),2)+d(g(t)%60,2)},z:function(){return this.zoneAbbr()},zz:function(){return this.zoneName()},X:function(){return this.unix()},Q:function(){return this.quarter()}},Jt=["months","monthsShort","weekdays","weekdaysShort","weekdaysMin"];Xt.length;)rt=Xt.pop(),Bt[rt+"o"]=s(Bt[rt],rt);for(;Rt.length;)rt=Rt.pop(),Bt[rt+rt]=n(Bt[rt],2);for(Bt.DDDD=n(Bt.DDD,3),o(r.prototype,{set:function(t){var e,n;for(n in t)e=t[n],"function"==typeof e?this[n]=e:this["_"+n]=e},_months:"一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月".split("_"),months:function(t){return this._months[t.month()]},_monthsShort:"一月_二月_三月_四月_五月_六月_七月_八月_九月_十月_十一月_十二月".split("_"),monthsShort:function(t){return this._monthsShort[t.month()]},monthsParse:function(t){var e,n,s;for(this._monthsParse||(this._monthsParse=[]),e=0;e<12;e++)if(this._monthsParse[e]||(n=st.utc([2e3,e]),s="^"+this.months(n,"")+"|^"+this.monthsShort(n,""),this._monthsParse[e]=new RegExp(s.replace(".",""),"i")),this._monthsParse[e].test(t))return e},_weekdays:"星期日_星期一_星期二_星期三_星期四_星期五_星期六".split("_"),weekdays:function(t){return this._weekdays[t.day()]},_weekdaysShort:"星期日_星期一_星期二_星期三_星期四_星期五_星期六".split("_"),weekdaysShort:function(t){return this._weekdaysShort[t.day()]},_weekdaysMin:"周日_周一_周二_周三_周四_周五_周六".split("_"),weekdaysMin:function(t){return this._weekdaysMin[t.day()]},weekdaysParse:function(t){var e,n,s;for(this._weekdaysParse||(this._weekdaysParse=[]),e=0;e<7;e++)if(this._weekdaysParse[e]||(n=st([2e3,1]).day(e),s="^"+this.weekdays(n,"")+"|^"+this.weekdaysShort(n,"")+"|^"+this.weekdaysMin(n,""),this._weekdaysParse[e]=new RegExp(s.replace(".",""),"i")),this._weekdaysParse[e].test(t))return e},_longDateFormat:{LT:"h:mm A",L:"YYYY-MM-DD",LL:"MMMM D YYYY",LLL:"MMMM D YYYY LT",LLLL:"dddd, MMMM D YYYY LT"},longDateFormat:function(t){var e=this._longDateFormat[t];return!e&&this._longDateFormat[t.toUpperCase()]&&(e=this._longDateFormat[t.toUpperCase()].replace(/MMMM|MM|DD|dddd/g,function(t){return t.slice(1)}),this._longDateFormat[t]=e),e},isPM:function(t){return"p"===(t+"").toLowerCase().charAt(0)},_meridiemParse:/[ap]\.?m?\.?/i,meridiem:function(t,e,n){return t>11?n?"pm":"PM":n?"am":"AM"},_calendar:{sameDay:"[Today at] LT",nextDay:"[Tomorrow at] LT",nextWeek:"dddd [at] LT",lastDay:"[Yesterday at] LT",lastWeek:"[Last] dddd [at] LT",sameElse:"L"},calendar:function(t,e){var n=this._calendar[t];return"function"==typeof n?n.apply(e):n},_relativeTime:{future:"in %s",past:"%s ago",s:"a few seconds",m:"a minute",mm:"%d minutes",h:"an hour",hh:"%d hours",d:"a day",dd:"%d days",M:"a month",MM:"%d months",y:"a year",yy:"%d years"},relativeTime:function(t,e,n,s){var r=this._relativeTime[n];return"function"==typeof r?r(t,e,n,s):r.replace(/%d/i,t)},pastFuture:function(t,e){var n=this._relativeTime[t>0?"future":"past"];return"function"==typeof n?n(e):n.replace(/%s/i,e)},ordinal:function(t){return this._ordinal.replace("%d",t)},_ordinal:"%d",preparse:function(t){return t},postformat:function(t){return t},week:function(t){return B(t,this._week.dow,this._week.doy).week},_week:{dow:0,doy:6},_invalidDate:"Invalid date",invalidDate:function(){return this._invalidDate}}),st=function(n,s,r,i){var a;return"boolean"==typeof r&&(i=r,r=t),a={},a._isAMomentObject=!0,a._i=n,a._f=s,a._l=r,a._strict=i,a._isUTC=!1,a._pf=e(),Q(a)},st.utc=function(n,s,r,i){var a;return"boolean"==typeof r&&(i=r,r=t),a={},a._isAMomentObject=!0,a._useUTC=!0,a._isUTC=!0,a._l=r,a._i=n,a._f=s,a._strict=i,a._pf=e(),Q(a).utc()},st.unix=function(t){return st(1e3*t)},st.duration=function(t,e){var n,s,r,i=t,o=null;return st.isDuration(t)?i={ms:t._milliseconds,d:t._days,M:t._months}:"number"==typeof t?(i={},e?i[e]=t:i.milliseconds=t):(o=Yt.exec(t))?(n="-"===o[1]?-1:1,i={y:0,d:g(o[dt])*n,h:g(o[ft])*n,m:g(o[ct])*n,s:g(o[lt])*n,ms:g(o[_t])*n}):(o=wt.exec(t))&&(n="-"===o[1]?-1:1,r=function(t){var e=t&&parseFloat(t.replace(",","."));return(isNaN(e)?0:e)*n},i={y:r(o[2]),M:r(o[3]),d:r(o[4]),h:r(o[5]),m:r(o[6]),s:r(o[7]),w:r(o[8])}),s=new a(i),st.isDuration(t)&&t.hasOwnProperty("_lang")&&(s._lang=t._lang),s},st.version=it,st.defaultFormat=It,st.updateOffset=function(){},st.lang=function(t,e){var n;return t?(e?S(k(t),e):null===e?(T(t),t="en"):mt[t]||O(t),n=st.duration.fn._lang=st.fn._lang=O(t),n._abbr):st.fn._lang._abbr},st.langData=function(t){return t&&t._lang&&t._lang._abbr&&(t=t._lang._abbr),O(t)},st.isMoment=function(t){return t instanceof i||null!=t&&t.hasOwnProperty("_isAMomentObject")},st.isDuration=function(t){return t instanceof a},rt=Jt.length-1;rt>=0;--rt)p(Jt[rt]);for(st.normalizeUnits=function(t){return m(t)},st.invalid=function(t){var e=st.utc(NaN);return null!=t?o(e._pf,t):e._pf.userInvalidated=!0,e},st.parseZone=function(t){return st(t).parseZone()},o(st.fn=i.prototype,{clone:function(){return st(this)},valueOf:function(){return+this._d+6e4*(this._offset||0)},unix:function(){return Math.floor(+this/1e3)},toString:function(){return this.clone().lang("en").format("ddd MMM DD YYYY HH:mm:ss [GMT]ZZ")},toDate:function(){return this._offset?new Date((+this)):this._d},toISOString:function(){var t=st(this).utc();return 0<t.year()&&t.year()<=9999?C(t,"YYYY-MM-DD[T]HH:mm:ss.SSS[Z]"):C(t,"YYYYYY-MM-DD[T]HH:mm:ss.SSS[Z]")},toArray:function(){var t=this;return[t.year(),t.month(),t.date(),t.hours(),t.minutes(),t.seconds(),t.milliseconds()]},isValid:function(){return v(this)},isDSTShifted:function(){return!!this._a&&(this.isValid()&&_(this._a,(this._isUTC?st.utc(this._a):st(this._a)).toArray())>0)},parsingFlags:function(){return o({},this._pf)},invalidAt:function(){return this._pf.overflow},utc:function(){return this.zone(0)},local:function(){return this.zone(0),this._isUTC=!1,this},format:function(t){var e=C(this,t||st.defaultFormat);return this.lang().postformat(e)},add:function(t,e){var n;return n="string"==typeof t?st.duration(+e,t):st.duration(t,e),f(this,n,1),this},subtract:function(t,e){var n;return n="string"==typeof t?st.duration(+e,t):st.duration(t,e),f(this,n,-1),this},diff:function(t,e,n){var s,r,i=b(t,this),a=6e4*(this.zone()-i.zone());return e=m(e),"year"===e||"month"===e?(s=432e5*(this.daysInMonth()+i.daysInMonth()),r=12*(this.year()-i.year())+(this.month()-i.month()),r+=(this-st(this).startOf("month")-(i-st(i).startOf("month")))/s,r-=6e4*(this.zone()-st(this).startOf("month").zone()-(i.zone()-st(i).startOf("month").zone()))/s,"year"===e&&(r/=12)):(s=this-i,r="second"===e?s/1e3:"minute"===e?s/6e4:"hour"===e?s/36e5:"day"===e?(s-a)/864e5:"week"===e?(s-a)/6048e5:s),n?r:h(r)},from:function(t,e){return st.duration(this.diff(t)).lang(this.lang()._abbr).humanize(!e)},fromNow:function(t){return this.from(st(),t)},calendar:function(){var t=b(st(),this).startOf("day"),e=this.diff(t,"days",!0),n=e<-6?"sameElse":e<-1?"lastWeek":e<0?"lastDay":e<1?"sameDay":e<2?"nextDay":e<7?"nextWeek":"sameElse";return this.format(this.lang().calendar(n,this))},isLeapYear:function(){return M(this.year())},isDST:function(){return this.zone()<this.clone().month(0).zone()||this.zone()<this.clone().month(5).zone()},day:function(t){var e=this._isUTC?this._d.getUTCDay():this._d.getDay();return null!=t?(t=q(t,this.lang()),this.add({d:t-e})):e},month:function(t){var e,n=this._isUTC?"UTC":"";return null!=t?"string"==typeof t&&(t=this.lang().monthsParse(t),"number"!=typeof t)?this:(e=this.date(),this.date(1),this._d["set"+n+"Month"](t),this.date(Math.min(e,this.daysInMonth())),st.updateOffset(this),this):this._d["get"+n+"Month"]()},startOf:function(t){switch(t=m(t)){case"year":this.month(0);case"month":this.date(1);case"week":case"isoWeek":case"day":this.hours(0);case"hour":this.minutes(0);case"minute":this.seconds(0);case"second":this.milliseconds(0)}return"week"===t?this.weekday(0):"isoWeek"===t&&this.isoWeekday(1),this},endOf:function(t){return t=m(t),this.startOf(t).add("isoWeek"===t?"week":t,1).subtract("ms",1)},isAfter:function(t,e){return e="undefined"!=typeof e?e:"millisecond",+this.clone().startOf(e)>+st(t).startOf(e)},isBefore:function(t,e){return e="undefined"!=typeof e?e:"millisecond",+this.clone().startOf(e)<+st(t).startOf(e)},isSame:function(t,e){return e=e||"ms",+this.clone().startOf(e)===+b(t,this).startOf(e)},min:function(t){return t=st.apply(null,arguments),t<this?this:t},max:function(t){return t=st.apply(null,arguments),t>this?this:t},zone:function(t){var e=this._offset||0;return null==t?this._isUTC?e:this._d.getTimezoneOffset():("string"==typeof t&&(t=L(t)),Math.abs(t)<16&&(t=60*t),this._offset=t,this._isUTC=!0,e!==t&&f(this,st.duration(e-t,"m"),1,!0),this)},zoneAbbr:function(){return this._isUTC?"UTC":""},zoneName:function(){return this._isUTC?"Coordinated Universal Time":""},parseZone:function(){return this._tzm?this.zone(this._tzm):"string"==typeof this._i&&this.zone(this._i),this},hasAlignedHourOffset:function(t){return t=t?st(t).zone():0,(this.zone()-t)%60===0},daysInMonth:function(){return Y(this.year(),this.month())},dayOfYear:function(t){var e=ot((st(this).startOf("day")-st(this).startOf("year"))/864e5)+1;return null==t?e:this.add("d",t-e)},quarter:function(){return Math.ceil((this.month()+1)/3)},weekYear:function(t){var e=B(this,this.lang()._week.dow,this.lang()._week.doy).year;return null==t?e:this.add("y",t-e)},isoWeekYear:function(t){var e=B(this,1,4).year;return null==t?e:this.add("y",t-e)},week:function(t){var e=this.lang().week(this);return null==t?e:this.add("d",7*(t-e))},isoWeek:function(t){var e=B(this,1,4).week;return null==t?e:this.add("d",7*(t-e))},weekday:function(t){var e=(this.day()+7-this.lang()._week.dow)%7;return null==t?e:this.add("d",t-e)},isoWeekday:function(t){return null==t?this.day()||7:this.day(this.day()%7?t:t-7)},get:function(t){return t=m(t),this[t]()},set:function(t,e){return t=m(t),"function"==typeof this[t]&&this[t](e),this},lang:function(e){return e===t?this._lang:(this._lang=O(e),this)}}),rt=0;rt<Nt.length;rt++)K(Nt[rt].toLowerCase().replace(/s$/,""),Nt[rt]);K("year","FullYear"),st.fn.days=st.fn.day,st.fn.months=st.fn.month,st.fn.weeks=st.fn.week,st.fn.isoWeeks=st.fn.isoWeek,st.fn.toJSON=st.fn.toISOString,o(st.duration.fn=a.prototype,{_bubble:function(){var t,e,n,s,r=this._milliseconds,i=this._days,a=this._months,o=this._data;o.milliseconds=r%1e3,t=h(r/1e3),o.seconds=t%60,e=h(t/60),o.minutes=e%60,n=h(e/60),o.hours=n%24,i+=h(n/24),o.days=i%30,a+=h(i/30),o.months=a%12,s=h(a/12),o.years=s},weeks:function(){return h(this.days()/7)},valueOf:function(){return this._milliseconds+864e5*this._days+this._months%12*2592e6+31536e6*g(this._months/12)},humanize:function(t){var e=+this,n=R(e,!t,this.lang());return t&&(n=this.lang().pastFuture(e,n)),this.lang().postformat(n)},add:function(t,e){var n=st.duration(t,e);return this._milliseconds+=n._milliseconds,this._days+=n._days,this._months+=n._months,this._bubble(),this},subtract:function(t,e){var n=st.duration(t,e);return this._milliseconds-=n._milliseconds,this._days-=n._days,this._months-=n._months,this._bubble(),this},get:function(t){return t=m(t),this[t.toLowerCase()+"s"]()},as:function(t){return t=m(t),this["as"+t.charAt(0).toUpperCase()+t.slice(1)+"s"]()},lang:st.fn.lang,toIsoString:function(){var t=Math.abs(this.years()),e=Math.abs(this.months()),n=Math.abs(this.days()),s=Math.abs(this.hours()),r=Math.abs(this.minutes()),i=Math.abs(this.seconds()+this.milliseconds()/1e3);return this.asSeconds()?(this.asSeconds()<0?"-":"")+"P"+(t?t+"Y":"")+(e?e+"M":"")+(n?n+"D":"")+(s||r||i?"T":"")+(s?s+"H":"")+(r?r+"M":"")+(i?i+"S":""):"P0D"}});for(rt in jt)jt.hasOwnProperty(rt)&&(et(rt,jt[rt]),tt(rt.toLowerCase()));et("Weeks",6048e5),st.duration.fn.asMonths=function(){return(+this-31536e6*this.years())/2592e6+12*this.years()},st.lang("en",{ordinal:function(t){var e=t%10,n=1===g(t%100/10)?"th":1===e?"st":2===e?"nd":3===e?"rd":"th";return t+n}}),pt?(module.exports=st,nt(!0)):"function"==typeof define&&define.amd?define("moment",function(e,n,s){return s.config&&s.config()&&s.config().noGlobal!==!0&&nt(s.config().noGlobal===t),st}):nt()}).call(this);