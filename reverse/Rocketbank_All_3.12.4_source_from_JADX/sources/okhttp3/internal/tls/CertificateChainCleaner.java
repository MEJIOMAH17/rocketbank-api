package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

public abstract class CertificateChainCleaner {
    public abstract List<Certificate> clean(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}
