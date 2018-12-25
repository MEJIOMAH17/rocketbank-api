package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class CipherSuite {
    private static final Map<String, CipherSuite> INSTANCES = new TreeMap(ORDER_BY_NAME);
    static final Comparator<String> ORDER_BY_NAME = new C07691();
    public static final CipherSuite TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA = forJavaName("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA = forJavaName("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA = forJavaName("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA = forJavaName("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_CBC_SHA256 = forJavaName("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
    public static final CipherSuite TLS_DHE_DSS_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA = forJavaName("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA = forJavaName("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
    public static final CipherSuite TLS_DHE_DSS_WITH_DES_CBC_SHA = forJavaName("SSL_DHE_DSS_WITH_DES_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA = forJavaName("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = forJavaName("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = forJavaName("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
    public static final CipherSuite TLS_DHE_RSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA = forJavaName("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA = forJavaName("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
    public static final CipherSuite TLS_DHE_RSA_WITH_DES_CBC_SHA = forJavaName("SSL_DHE_RSA_WITH_DES_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA = forJavaName("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_EXPORT_WITH_RC4_40_MD5 = forJavaName("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
    public static final CipherSuite TLS_DH_anon_WITH_3DES_EDE_CBC_SHA = forJavaName("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA = forJavaName("TLS_DH_anon_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_DH_anon_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_DH_anon_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA = forJavaName("TLS_DH_anon_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_CBC_SHA256 = forJavaName("TLS_DH_anon_WITH_AES_256_CBC_SHA256");
    public static final CipherSuite TLS_DH_anon_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_DH_anon_WITH_DES_CBC_SHA = forJavaName("SSL_DH_anon_WITH_DES_CBC_SHA");
    public static final CipherSuite TLS_DH_anon_WITH_RC4_128_MD5 = forJavaName("SSL_DH_anon_WITH_RC4_128_MD5");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384 = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = forJavaName("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_NULL_SHA = forJavaName("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_RC4_128_SHA = forJavaName("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384 = forJavaName("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = forJavaName("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_NULL_SHA = forJavaName("TLS_ECDHE_RSA_WITH_NULL_SHA");
    public static final CipherSuite TLS_ECDHE_RSA_WITH_RC4_128_SHA = forJavaName("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384 = forJavaName("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_NULL_SHA = forJavaName("TLS_ECDH_ECDSA_WITH_NULL_SHA");
    public static final CipherSuite TLS_ECDH_ECDSA_WITH_RC4_128_SHA = forJavaName("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384 = forJavaName("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
    public static final CipherSuite TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_ECDH_RSA_WITH_NULL_SHA = forJavaName("TLS_ECDH_RSA_WITH_NULL_SHA");
    public static final CipherSuite TLS_ECDH_RSA_WITH_RC4_128_SHA = forJavaName("TLS_ECDH_RSA_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_128_CBC_SHA = forJavaName("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_ECDH_anon_WITH_AES_256_CBC_SHA = forJavaName("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_ECDH_anon_WITH_NULL_SHA = forJavaName("TLS_ECDH_anon_WITH_NULL_SHA");
    public static final CipherSuite TLS_ECDH_anon_WITH_RC4_128_SHA = forJavaName("TLS_ECDH_anon_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_EMPTY_RENEGOTIATION_INFO_SCSV = forJavaName("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
    public static final CipherSuite TLS_FALLBACK_SCSV = forJavaName("TLS_FALLBACK_SCSV");
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5 = forJavaName("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA = forJavaName("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_MD5 = forJavaName("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
    public static final CipherSuite TLS_KRB5_EXPORT_WITH_RC4_40_SHA = forJavaName("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_MD5 = forJavaName("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
    public static final CipherSuite TLS_KRB5_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_MD5 = forJavaName("TLS_KRB5_WITH_DES_CBC_MD5");
    public static final CipherSuite TLS_KRB5_WITH_DES_CBC_SHA = forJavaName("TLS_KRB5_WITH_DES_CBC_SHA");
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_MD5 = forJavaName("TLS_KRB5_WITH_RC4_128_MD5");
    public static final CipherSuite TLS_KRB5_WITH_RC4_128_SHA = forJavaName("TLS_KRB5_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_PSK_WITH_3DES_EDE_CBC_SHA = forJavaName("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_PSK_WITH_AES_128_CBC_SHA = forJavaName("TLS_PSK_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_PSK_WITH_AES_256_CBC_SHA = forJavaName("TLS_PSK_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_PSK_WITH_RC4_128_SHA = forJavaName("TLS_PSK_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_RSA_EXPORT_WITH_DES40_CBC_SHA = forJavaName("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
    public static final CipherSuite TLS_RSA_EXPORT_WITH_RC4_40_MD5 = forJavaName("SSL_RSA_EXPORT_WITH_RC4_40_MD5");
    public static final CipherSuite TLS_RSA_WITH_3DES_EDE_CBC_SHA = forJavaName("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA = forJavaName("TLS_RSA_WITH_AES_128_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA256 = forJavaName("TLS_RSA_WITH_AES_128_CBC_SHA256");
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256 = forJavaName("TLS_RSA_WITH_AES_128_GCM_SHA256");
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA = forJavaName("TLS_RSA_WITH_AES_256_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA256 = forJavaName("TLS_RSA_WITH_AES_256_CBC_SHA256");
    public static final CipherSuite TLS_RSA_WITH_AES_256_GCM_SHA384 = forJavaName("TLS_RSA_WITH_AES_256_GCM_SHA384");
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_128_CBC_SHA = forJavaName("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_CAMELLIA_256_CBC_SHA = forJavaName("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_DES_CBC_SHA = forJavaName("SSL_RSA_WITH_DES_CBC_SHA");
    public static final CipherSuite TLS_RSA_WITH_NULL_MD5 = forJavaName("SSL_RSA_WITH_NULL_MD5");
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA = forJavaName("SSL_RSA_WITH_NULL_SHA");
    public static final CipherSuite TLS_RSA_WITH_NULL_SHA256 = forJavaName("TLS_RSA_WITH_NULL_SHA256");
    public static final CipherSuite TLS_RSA_WITH_RC4_128_MD5 = forJavaName("SSL_RSA_WITH_RC4_128_MD5");
    public static final CipherSuite TLS_RSA_WITH_RC4_128_SHA = forJavaName("SSL_RSA_WITH_RC4_128_SHA");
    public static final CipherSuite TLS_RSA_WITH_SEED_CBC_SHA = forJavaName("TLS_RSA_WITH_SEED_CBC_SHA");
    final String javaName;

    /* renamed from: okhttp3.CipherSuite$1 */
    class C07691 implements Comparator<String> {
        C07691() {
        }

        public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
            String str = (String) obj;
            String str2 = (String) obj2;
            int min = Math.min(str.length(), str2.length());
            int i = 4;
            while (i < min) {
                char charAt = str.charAt(i);
                char charAt2 = str2.charAt(i);
                if (charAt != charAt2) {
                    return charAt < charAt2 ? -1 : 1;
                } else {
                    i++;
                }
            }
            obj = str.length();
            obj2 = str2.length();
            if (obj != obj2) {
                return obj < obj2 ? -1 : 1;
            } else {
                return null;
            }
        }
    }

    public static synchronized CipherSuite forJavaName(String str) {
        CipherSuite cipherSuite;
        synchronized (CipherSuite.class) {
            cipherSuite = (CipherSuite) INSTANCES.get(str);
            if (cipherSuite == null) {
                cipherSuite = new CipherSuite(str);
                INSTANCES.put(str, cipherSuite);
            }
        }
        return cipherSuite;
    }

    static List<CipherSuite> forJavaNames(String... strArr) {
        List arrayList = new ArrayList(strArr.length);
        for (String forJavaName : strArr) {
            arrayList.add(forJavaName(forJavaName));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private CipherSuite(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.javaName = str;
    }

    public final String toString() {
        return this.javaName;
    }
}
