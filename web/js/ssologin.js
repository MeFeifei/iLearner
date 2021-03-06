function SSOController() {
    var r, s, t, u, v, w, x, y, a = this, b = {
        success: function() {},
        error: function() {},
        complete: function() {}
    }, c = "ssoLoginFrame", d = "ssoLoginForm", e = "", f = "", g = 0, h = 0, k = null, l = null, m = 0, n = {}, o = "/passport/user/login", p = "/passport/user/register", q = "/passport/user/prelogin";
    this.verifyCodeUrl = "/passport/user/verifycode", this.checkVerifyUrl = "/passport/user/loginverifyshow", this.checkVerifyCode = "/passport/user/verifycheck", this.checkUserName = "/passport/user/checkusername", this.checkNickName = "/passport/user/checknickname", this.tpRegister = "/passport/user/tpregister", this.tpBind = "/passport/user/tpbind", r = function(a) {
        $(c).remove();
        var b = $("<iframe></iframe>");
        return b.css("display", "none"), b.attr("id", a), b.attr("name", a), b.attr("src", "javascript:void(0)"), b.appendTo("body"), b
    }, s = function(a) {
        var b, c;
        $(d).remove(), b = $("<form></form>"), b.attr("id", a), b.attr("name", a), b.attr("method", "post"), b.css("display", "none");
        for (c in n)
            b.append($("<input type='text' name='" + c + "' value='" + n[c] + "' />"));
        return b.appendTo("body"), b
    }, t = function() {
        if ("undefined" == typeof XMLHttpRequest)
            return !1;
        var b = new XMLHttpRequest;
        return !1 in b?!1 : ($.ajax({
            url: o,
            data: n,
            method: "post",
            dataType: "json",
            xhrFields: {
                withCredentials: !0
            },
            success: function(b) {
                a.ssoLoginCallBack(b)
            },
            error: function() {
                n.returntype = "html", v()
            }
        }), !0)
    }, u = function() {
        return "undefined" == typeof XMLHttpRequest?!1 : (new XMLHttpRequest, $.ajax({
            url: p,
            data: n,
            method: "post",
            dataType: "json",
            success: function(b) {
                a.ssoLoginCallBack(b)
            },
            error: function() {
                n.returntype = "html", w()
            }
        }), !0)
    }, v = function() {
        r(c);
        var a = s(d);
        a.attr("action", o), a.attr("target", c);
        try {
            a.submit()
        } catch (b) {
            $(c).remove()
        }
        setTimeout(function() {
            $(a).remove()
        }, 10)
    }, w = function() {
        r(c);
        var a = s(d);
        a.attr("action", p), a.attr("target", c);
        try {
            a.submit()
        } catch (b) {
            $(c).remove()
        }
        setTimeout(function() {
            $(a).remove()
        }, 10)
    }, x = function(a) {
        clearInterval(h), h = null, e = a.pubkey, f = a.code, g = a.servertime, setInterval(function() {
            g++
        }, 1e3)
    }, this.preLogin = function(a) {
        return e && f ? (a.success && a.success(), void 0) : (a = a || {
                success: function() {},
                error: function() {}
            }, $.ajax({
            url: q,
            method: "post",
            dataType: "json",
            success: function(b) {
                10001 == b.status ? (x(b), a.success && a.success()) : a.error && a.error()
            },
            error: function() {
                a.error()
            }
        }), void 0)
    }, this.setCrossDomainCookie = function(b) {
        m = b.length;
        for (var c = 0; c < b.length; c++)
            url = b[c], $.get(url, function() {
                m--, 0 == m && (clearTimeout(l), a.crossDomainResult())
            }, "jsonp")
    }, this.ssoLoginCallBack = function(c) {
        10001 == c.status ? (k = function() {
            b.success(c), b.complete()
        }, this.setCrossDomainCookie(c.data.url), l = setTimeout(function() {
            a.crossDomainResult()
        }, 5e3)) : (b.success(c), b.complete())
    }, this.crossDomainResult = function() {
        "function" == typeof k && k()
    }, this.crossDomainAction = function(b) {
        return "function" == typeof b && (k = b), l = setTimeout(function() {
            a.crossDomainResult()
        }, 5e3), !1
    }, this.frameLoginCallBack = function(a) {
        b.success(a), b.complete(), $(c).remove()
    }, this.login = function(a) {
        if (a.data.pwencode) {
            if ("" == f || 0 == g || "" == e)
                return a.error(), a.complete(), this.preLogin(), void 0;
            var c = y(f + "	" + g + "	" + a.data.password);
            a.data.password = window.btoa(c)
        }
        return n = a.data, n.referer = window.location.protocol + "//" + window.location.hostname, b = {
            success: a.success,
            error: a.error,
            complete: a.complete
        }, t()?!0 : (n.returntype = "html", v(), void 0)
    }, this.register = function(a) {
        return b = {
            success: a.success,
            error: a.error,
            complete: a.complete
        }, n = a.data, n.referer = window.location.protocol + "//" + window.location.hostname, u()?!0 : (n.returntype = "html", w(), void 0)
    }, y = function(a) {
        function q(a) {
            m = a, n = new Array(m);
            for (var b = 0; b < n.length; b++)
                n[b] = 0;
            o = new t, p = new t, p.digits[0] = 1
        }
        function t(a) {
            this.digits = "boolean" == typeof a && 1 == a ? null : n.slice(0), this.isNeg=!1
        }
        function v(a) {
            var b = new t(!0);
            return b.digits = a.digits.slice(0), b.isNeg = a.isNeg, b
        }
        function w(a) {
            var d, b = new t;
            for (b.isNeg = 0 > a, a = Math.abs(a), d = 0; a > 0;)
                b.digits[d++] = a & k, a>>=c;
            return b
        }
        function E(a) {
            var h, b = 48, c = b + 9, d = 97, e = d + 25, f = 65, g = 90;
            return h = a >= b && c >= a ? a - b : a >= f && g >= a ? 10 + a - f : a >= d && e >= a ? 10 + a - d : 0
        }
        function F(a) {
            var d, b = 0, c = Math.min(a.length, 4);
            for (d = 0; c > d; ++d)
                b<<=4, b|=E(a.charCodeAt(d));
            return b
        }
        function G(a) {
            var d, e, b = new t, c = a.length;
            for (d = c, e = 0; d > 0; d -= 4, ++e)
                b.digits[e] = F(a.substr(Math.max(d - 4, 0), Math.min(d, 4)));
            return b
        }
        function I(a) {
            var c, b = "";
            for (c = N(a); c>-1; --c)
                b += J(a.digits[c]);
            return b
        }
        function J(a) {
            var c, b = String.fromCharCode(255 & a);
            return a>>>=8, c = String.fromCharCode(255 & a), c + b
        }
        function L(a, b) {
            var c, d, e, g;
            if (a.isNeg != b.isNeg)
                b.isNeg=!b.isNeg, c = M(a, b), b.isNeg=!b.isNeg;
            else {
                for (c = new t, d = 0, g = 0; g < a.digits.length; ++g)
                    e = a.digits[g] + b.digits[g] + d, c.digits[g] = 65535 & e, d = Number(e >= f);
                c.isNeg = a.isNeg
            }
            return c
        }
        function M(a, b) {
            var c, d, e, g;
            if (a.isNeg != b.isNeg)
                b.isNeg=!b.isNeg, c = L(a, b), b.isNeg=!b.isNeg;
            else {
                for (c = new t, e = 0, g = 0; g < a.digits.length; ++g)
                    d = a.digits[g] - b.digits[g] + e, c.digits[g] = 65535 & d, c.digits[g] < 0 && (c.digits[g] += f), e = 0 - Number(0 > d);
                if ( - 1 == e) {
                    for (e = 0, g = 0; g < a.digits.length; ++g)
                        d = 0 - c.digits[g] + e, c.digits[g] = 65535 & d, c.digits[g] < 0 && (c.digits[g] += f), e = 0 - Number(0 > d);
                    c.isNeg=!a.isNeg
                } else
                    c.isNeg = a.isNeg
            }
            return c
        }
        function N(a) {
            for (var b = a.digits.length - 1; b > 0 && 0 == a.digits[b];)
                --b;
            return b
        }
        function O(a) {
            var f, b = N(a), c = a.digits[b], e = (b + 1) * d;
            for (f = e; f > e - d && 0 == (32768 & c); --f)
                c<<=1;
            return f
        }
        function P(a, b) {
            var e, i, l, m, d = new t, f = N(a), g = N(b);
            for (m = 0; g >= m; ++m) {
                for (e = 0, l = m, j = 0; f >= j; ++j, ++l)
                    i = d.digits[l] + a.digits[j] * b.digits[m] + e, d.digits[l] = i & k, e = i>>>c;
                d.digits[m + f + 1] = e
            }
            return d.isNeg = a.isNeg != b.isNeg, d
        }
        function Q(a, b) {
            var d, e, f, g;
            for (result = new t, d = N(a), e = 0, g = 0; d >= g; ++g)
                f = result.digits[g] + a.digits[g] * b + e, result.digits[g] = f & k, e = f>>>c;
            return result.digits[1 + d] = e, result
        }
        function R(a, b, c, d, e) {
            var g, h, f = Math.min(b + e, a.length);
            for (g = b, h = d; f > g; ++g, ++h)
                c[h] = a[g]
        }
        function T(a, b) {
            var f, g, h, i, c = Math.floor(b / d), e = new t;
            for (R(a.digits, 0, e.digits, c, e.digits.length - c)
                     , f = b%d, g = d - f, h = e.digits.length - 1, i = h - 1;
                 h > 0;
                 --h, --i)e.digits[h] = e.digits[h]<<f & k | (e.digits[i] & S[f])>>>g;
            return e.digits[0] = e.digits[h]<<f & k, e.isNeg = a.isNeg, e
        }
        function V(a, b) {
            var f, g, h, i, c = Math.floor(b / d), e = new t;
            for (R(a.digits, c, e.digits, 0, a.digits.length - c)
                     , f = b%d, g = d - f, h = 0, i = h + 1;
                 h < e.digits.length - 1;
                 ++h, ++i)e.digits[h] = e.digits[h]>>>f | (e.digits[i] & U[f])<<g;
            return e.digits[e.digits.length - 1]>>>=f, e.isNeg = a.isNeg, e
        }
        function W(a, b) {
            var c = new t;
            return R(a.digits, 0, c.digits, b, c.digits.length - b), c
        }
        function X(a, b) {
            var c = new t;
            return R(a.digits, b, c.digits, 0, c.digits.length - b), c
        }
        function Y(a, b) {
            var c = new t;
            return R(a.digits, 0, c.digits, 0, b), c
        }
        function Z(a, b) {
            if (a.isNeg != b.isNeg)
                return 1 - 2 * Number(a.isNeg);
            for (var c = a.digits.length - 1; c >= 0; --c)
                if (a.digits[c] != b.digits[c])
                    return a.isNeg ? 1 - 2 * Number(a.digits[c] > b.digits[c]) : 1 - 2 * Number(a.digits[c] < b.digits[c]);
            return 0
        }
        function $(a, b) {
            var j, l, m, n, o, q, r, s, u, w, x, y, z, A, c = O(a), e = O(b), i = b.isNeg;
            if (e > c)
                return a.isNeg ? (j = v(p), j.isNeg=!b.isNeg, a.isNeg=!1, b.isNeg=!1, l = M(b, a), a.isNeg=!0, b.isNeg = i) : (j = new t, l = v(a)), new Array(j, l);
            for (j = new t, l = a, m = Math.ceil(e / d) - 1, n = 0; b.digits[m] < g;)
                b = T(b, 1), ++n, ++e, m = Math.ceil(e / d) - 1;
            for (l = T(l, n), c += n, o = Math.ceil(c / d) - 1, q = W(b, o - m); - 1 != Z(l, q);)
                ++j.digits[o - m], l = M(l, q);
            for (r = o; r > m; --r) {
                for (s = r >= l.digits.length ? 0 : l.digits[r], u = r - 1 >= l.digits.length ? 0 : l.digits[r - 1], w = r - 2 >= l.digits.length ? 0 : l.digits[r - 2], x = m >= b.digits.length ? 0 : b.digits[m], y = m - 1 >= b.digits.length ? 0 : b.digits[m - 1], j.digits[r - m - 1] = s == x ? k : Math.floor((s * f + u) / x), z = j.digits[r - m - 1] * (x * f + y), A = s * h + (u * f + w); z > A;)
                    --j.digits[r - m - 1], z = j.digits[r - m - 1] * (x * f | y), A = s * f * f + (u * f + w);
                q = W(b, r - m - 1), l = M(l, Q(q, j.digits[r - m - 1])), l.isNeg && (l = L(l, q), --j.digits[r - m - 1])
            }
            return l = V(l, n), j.isNeg = a.isNeg != i, a.isNeg && (j = i ? L(j, p) : M(j, p), b = V(b, n), l = M(b, l)), 0 == l.digits[0] && 0 == N(l) && (l.isNeg=!1), new Array(j, l)
        }
        function _(a, b) {
            return $(a, b)[0]
        }
        function eb(a) {
            this.modulus = v(a), this.k = N(this.modulus) + 1;
            var b = new t;
            b.digits[2 * this.k] = 1, this.mu = _(b, this.modulus), this.bkplus1 = new t, this.bkplus1.digits[this.k + 1] = 1, this.modulo = fb, this.multiplyMod = gb, this.powMod = hb
        }
        function fb(a) {
            var i, b = X(a, this.k - 1), c = P(b, this.mu), d = X(c, this.k + 1), e = Y(a, this.k + 1), f = P(d, this.modulus), g = Y(f, this.k + 1), h = M(e, g);
            for (h.isNeg && (h = L(h, this.bkplus1)), i = Z(h, this.modulus) >= 0; i;)
                h = M(h, this.modulus), i = Z(h, this.modulus) >= 0;
            return h
        }
        function gb(a, b) {
            var c = P(a, b);
            return this.modulo(c)
        }
        function hb(a, b) {
            var d, e, c = new t;
            for (c.digits[0] = 1, d = a, e = b; ;) {
                if (0 != (1 & e.digits[0]) && (c = this.multiplyMod(c, d)), e = V(e, 1), 0 == e.digits[0] && 0 == N(e))
                    break;
                d = this.multiplyMod(d, d)
            }
            return c
        }
        function ib(a) {
            var b = 1024;
            this.e = G("10001"), this.d = G(""), this.m = G(a), this.chunkSize = "number" != typeof b ? 2 * N(this.m) : b / 8, this.radix = 16, this.barrett = new eb(this.m)
        }
        function jb(a) {
            var d, f, g, j, k, m, n, o, b = new Array, c = a.length, l = "", p = new ib(e);
            for (c > p.chunkSize - 11 && (c = p.chunkSize - 11), d = 0, f = c - 1; c > d;)
                b[f] = a.charCodeAt(d), d++, f--;
            for (f = p.chunkSize - c%p.chunkSize; f > 0;) {
                for (j = Math.floor(256 * Math.random()); !j;)
                    j = Math.floor(256 * Math.random());
                b[d] = j, d++, f--
            }
            for (b[c] = 0, b[p.chunkSize - 2] = 2, b[p.chunkSize - 1] = 0, k = b.length, d = 0; k > d; d += p.chunkSize) {
                for (m = new t, f = 0, g = d; g < d + p.chunkSize; ++f)
                    m.digits[f] = b[g++], m.digits[f] += b[g++]<<8;
                n = p.barrett.powMod(m, p.e), o = I(n), l += o
            }
            return l
        }
        var m, n, o, p, S, U, c = 16, d = c, f = 65536, g = f>>>1, h = f * f, k = f - 1;
        return q(20), w(1e15), new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"), new Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"), S = new Array(0, 32768, 49152, 57344, 61440, 63488, 64512, 65024, 65280, 65408, 65472, 65504, 65520, 65528, 65532, 65534, 65535), U = new Array(0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535), q(131), jb(a)
    }
}
!function() {
    function c(a) {
        this.message = a
    }
    var a = "undefined" != typeof exports ? exports: self, b = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    c.prototype = new Error, c.prototype.name = "InvalidCharacterError", a.btoa || (a.btoa = function(a) {
        var e, f, g, h, i, d = String(a);
        for (g = 0, h = b, i = ""; d.charAt(0 | g) || (h = "=", g%1); i += h.charAt(63 & e>>8 - 8 * (g%1)
        )) {
            if (f = d.charCodeAt(g += .75), f > 255)
                throw new c("'btoa' failed: The string to be encoded contains characters outside of the Latin1 range.");
            e = e<<8 | f
        }
        return i
    }), a.atob || (a.atob = function(a) {
        var f, g, e, h, i, d = String(a).replace(/=+$/, "");
        if (1 == d.length%4)
            throw new c("'atob' failed: The string to be decoded is not correctly encoded.");
        for (e = 0, h = 0, i = ""; g = d.charAt(h++); ~g && (f = e%4 ? 64 * f + g : g, e++%4)
            ? i += String.fromCharCode(255 & f>>(6&-2 * e)) : 0)g = b.indexOf(g);
        return i
    })
}(), imoocSSO = new SSOController;

