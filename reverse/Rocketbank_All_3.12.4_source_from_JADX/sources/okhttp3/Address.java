package okhttp3;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.HttpUrl.Builder;
import okhttp3.internal.Util;
import ru.rocketbank.r2d2.root.chat.ChatFragment;

public final class Address {
    @Nullable
    final CertificatePinner certificatePinner;
    final List<ConnectionSpec> connectionSpecs;
    final Dns dns;
    @Nullable
    final HostnameVerifier hostnameVerifier;
    final List<Protocol> protocols;
    @Nullable
    final Proxy proxy;
    final Authenticator proxyAuthenticator;
    final ProxySelector proxySelector;
    final SocketFactory socketFactory;
    @Nullable
    final SSLSocketFactory sslSocketFactory;
    final HttpUrl url;

    public Address(String str, int i, Dns dns, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, Authenticator authenticator, @Nullable Proxy proxy, List<Protocol> list, List<ConnectionSpec> list2, ProxySelector proxySelector) {
        Builder builder = new Builder();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            builder.scheme = "http";
        } else if (str2.equalsIgnoreCase("https")) {
            builder.scheme = "https";
        } else {
            throw new IllegalArgumentException("unexpected scheme: ".concat(String.valueOf(str2)));
        }
        if (str == null) {
            throw new NullPointerException("host == null");
        }
        str2 = Util.canonicalizeHost(HttpUrl.percentDecode(str, 0, str.length(), false));
        if (str2 == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(String.valueOf(str)));
        }
        builder.host = str2;
        if (i > 0) {
            if (i <= ChatFragment.TYPE_MESSAGE_TYPING) {
                builder.port = i;
                this.url = builder.build();
                if (dns == null) {
                    throw new NullPointerException("dns == null");
                }
                this.dns = dns;
                if (socketFactory == null) {
                    throw new NullPointerException("socketFactory == null");
                }
                this.socketFactory = socketFactory;
                if (authenticator == null) {
                    throw new NullPointerException("proxyAuthenticator == null");
                }
                this.proxyAuthenticator = authenticator;
                if (list == null) {
                    throw new NullPointerException("protocols == null");
                }
                this.protocols = Util.immutableList((List) list);
                if (list2 == null) {
                    throw new NullPointerException("connectionSpecs == null");
                }
                this.connectionSpecs = Util.immutableList((List) list2);
                if (proxySelector == null) {
                    throw new NullPointerException("proxySelector == null");
                }
                this.proxySelector = proxySelector;
                this.proxy = proxy;
                this.sslSocketFactory = sSLSocketFactory;
                this.hostnameVerifier = hostnameVerifier;
                this.certificatePinner = certificatePinner;
                return;
            }
        }
        throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i)));
    }

    public final HttpUrl url() {
        return this.url;
    }

    public final Dns dns() {
        return this.dns;
    }

    public final SocketFactory socketFactory() {
        return this.socketFactory;
    }

    public final List<Protocol> protocols() {
        return this.protocols;
    }

    public final List<ConnectionSpec> connectionSpecs() {
        return this.connectionSpecs;
    }

    public final ProxySelector proxySelector() {
        return this.proxySelector;
    }

    @Nullable
    public final Proxy proxy() {
        return this.proxy;
    }

    @Nullable
    public final SSLSocketFactory sslSocketFactory() {
        return this.sslSocketFactory;
    }

    @Nullable
    public final HostnameVerifier hostnameVerifier() {
        return this.hostnameVerifier;
    }

    @Nullable
    public final CertificatePinner certificatePinner() {
        return this.certificatePinner;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (this.url.equals(address.url) && equalsNonHost(address) != null) {
                return true;
            }
        }
        return null;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = (((((((((((((((((527 + this.url.hashCode()) * 31) + this.dns.hashCode()) * 31) + this.proxyAuthenticator.hashCode()) * 31) + this.protocols.hashCode()) * 31) + this.connectionSpecs.hashCode()) * 31) + this.proxySelector.hashCode()) * 31) + (this.proxy != null ? this.proxy.hashCode() : 0)) * 31) + (this.sslSocketFactory != null ? this.sslSocketFactory.hashCode() : 0)) * 31) + (this.hostnameVerifier != null ? this.hostnameVerifier.hashCode() : 0)) * 31;
        if (this.certificatePinner != null) {
            i = this.certificatePinner.hashCode();
        }
        return hashCode + i;
    }

    final boolean equalsNonHost(Address address) {
        return (this.dns.equals(address.dns) && this.proxyAuthenticator.equals(address.proxyAuthenticator) && this.protocols.equals(address.protocols) && this.connectionSpecs.equals(address.connectionSpecs) && this.proxySelector.equals(address.proxySelector) && Util.equal(this.proxy, address.proxy) && Util.equal(this.sslSocketFactory, address.sslSocketFactory) && Util.equal(this.hostnameVerifier, address.hostnameVerifier) && Util.equal(this.certificatePinner, address.certificatePinner) && this.url.port == address.url.port) ? true : null;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("Address{");
        stringBuilder.append(this.url.host);
        stringBuilder.append(":");
        stringBuilder.append(this.url.port);
        if (this.proxy != null) {
            stringBuilder.append(", proxy=");
            stringBuilder.append(this.proxy);
        } else {
            stringBuilder.append(", proxySelector=");
            stringBuilder.append(this.proxySelector);
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}
