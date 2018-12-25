package io.card.payment;

public class CardIONativeLibsConfig {
    private static String alternativeLibsPath;

    public static void init(String str) {
        alternativeLibsPath = str;
    }

    static String getAlternativeLibsPath() {
        return alternativeLibsPath;
    }
}
