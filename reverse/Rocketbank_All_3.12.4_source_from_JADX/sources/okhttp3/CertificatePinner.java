package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;

public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    static final class Pin {
        final String canonicalHostname;
        final ByteString hash;
        final String hashAlgorithm;
        final String pattern;

        public final boolean equals(Object obj) {
            if (obj instanceof Pin) {
                Pin pin = (Pin) obj;
                if (this.pattern.equals(pin.pattern) && this.hashAlgorithm.equals(pin.hashAlgorithm) && this.hash.equals(pin.hash) != null) {
                    return true;
                }
            }
            return null;
        }

        public final int hashCode() {
            return ((((527 + this.pattern.hashCode()) * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.hashAlgorithm);
            stringBuilder.append(this.hash.base64());
            return stringBuilder.toString();
        }
    }

    CertificatePinner(Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (Util.equal(this.certificateChainCleaner, certificatePinner.certificateChainCleaner) && this.pins.equals(certificatePinner.pins) != null) {
                return true;
            }
        }
        return null;
    }

    public final int hashCode() {
        return ((this.certificateChainCleaner != null ? this.certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    final CertificatePinner withCertificateChainCleaner(@Nullable CertificateChainCleaner certificateChainCleaner) {
        if (Util.equal(this.certificateChainCleaner, certificateChainCleaner)) {
            return this;
        }
        return new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            StringBuilder stringBuilder = new StringBuilder("sha256/");
            stringBuilder.append(ByteString.of(((X509Certificate) certificate).getPublicKey().getEncoded()).sha256().base64());
            return stringBuilder.toString();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public final void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        String str2 = str;
        List emptyList = Collections.emptyList();
        Iterator it = this.pins.iterator();
        List list2 = emptyList;
        while (true) {
            int i = 0;
            if (!it.hasNext()) {
                break;
            }
            int indexOf;
            Pin pin = (Pin) it.next();
            if (pin.pattern.startsWith("*.")) {
                indexOf = str2.indexOf(46);
                if ((str.length() - indexOf) - 1 == pin.canonicalHostname.length()) {
                    if (str2.regionMatches(false, indexOf + 1, pin.canonicalHostname, 0, pin.canonicalHostname.length())) {
                        i = 1;
                    }
                }
            } else {
                i = str2.equals(pin.canonicalHostname);
            }
            if (i != 0) {
                if (list2.isEmpty()) {
                    list2 = new ArrayList();
                }
                list2.add(pin);
            }
        }
        if (!list2.isEmpty()) {
            int i2;
            StringBuilder stringBuilder;
            emptyList = r0.certificateChainCleaner != null ? r0.certificateChainCleaner.clean(list, str2) : list;
            int size = emptyList.size();
            for (i2 = 0; i2 < size; i2++) {
                X509Certificate x509Certificate = (X509Certificate) emptyList.get(i2);
                int size2 = list2.size();
                Object obj = null;
                Object obj2 = obj;
                for (int i3 = 0; i3 < size2; i3++) {
                    Pin pin2 = (Pin) list2.get(i3);
                    if (pin2.hashAlgorithm.equals("sha256/")) {
                        if (obj == null) {
                            obj = ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha256();
                        }
                        if (pin2.hash.equals(obj)) {
                            return;
                        }
                    } else if (pin2.hashAlgorithm.equals("sha1/")) {
                        if (obj2 == null) {
                            obj2 = ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha1();
                        }
                        if (pin2.hash.equals(obj2)) {
                            return;
                        }
                    } else {
                        stringBuilder = new StringBuilder("unsupported hashAlgorithm: ");
                        stringBuilder.append(pin2.hashAlgorithm);
                        throw new AssertionError(stringBuilder.toString());
                    }
                }
            }
            stringBuilder = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
            i2 = emptyList.size();
            for (int i4 = 0; i4 < i2; i4++) {
                X509Certificate x509Certificate2 = (X509Certificate) emptyList.get(i4);
                stringBuilder.append("\n    ");
                stringBuilder.append(pin(x509Certificate2));
                stringBuilder.append(": ");
                stringBuilder.append(x509Certificate2.getSubjectDN().getName());
            }
            stringBuilder.append("\n  Pinned certificates for ");
            stringBuilder.append(str2);
            stringBuilder.append(":");
            indexOf = list2.size();
            while (i < indexOf) {
                Pin pin3 = (Pin) list2.get(i);
                stringBuilder.append("\n    ");
                stringBuilder.append(pin3);
                i++;
            }
            throw new SSLPeerUnverifiedException(stringBuilder.toString());
        }
    }
}
