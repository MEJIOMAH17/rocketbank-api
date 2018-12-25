package io.card.payment.i18n;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class I18nManager<E extends Enum<?>> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Set<String> RIGHT_TO_LEFT_LOCALE_SET = new HashSet();
    private static final Map<String, String> SPECIAL_LOCALE_MAP = new HashMap();
    private static final String TAG = "I18nManager";
    private SupportedLocale<E> currentLocale;
    private Class<E> enumClazz;
    private Map<String, SupportedLocale<E>> supportedLocales = new LinkedHashMap();

    static {
        SPECIAL_LOCALE_MAP.put("zh_CN", "zh-Hans");
        SPECIAL_LOCALE_MAP.put("zh_TW", "zh-Hant_TW");
        SPECIAL_LOCALE_MAP.put("zh_HK", "zh-Hant");
        SPECIAL_LOCALE_MAP.put("en_UK", "en_GB");
        SPECIAL_LOCALE_MAP.put("en_IE", "en_GB");
        SPECIAL_LOCALE_MAP.put("iw_IL", "he");
        SPECIAL_LOCALE_MAP.put("no", "nb");
        RIGHT_TO_LEFT_LOCALE_SET.add("he");
        RIGHT_TO_LEFT_LOCALE_SET.add("ar");
    }

    public I18nManager(Class<E> cls, List<SupportedLocale<E>> list) {
        this.enumClazz = cls;
        for (SupportedLocale supportedLocale : list) {
            String name = supportedLocale.getName();
            if (this.supportedLocales.containsKey(name)) {
                list = new StringBuilder("Locale ");
                list.append(name);
                list.append(" already added");
                throw new RuntimeException(list.toString());
            }
            this.supportedLocales.put(name, supportedLocale);
            logMissingLocalizations(name);
        }
        setLanguage(null);
    }

    public final void setLanguage(String str) {
        this.currentLocale = null;
        this.currentLocale = getLocaleFromSpecifier(str);
        str = TAG;
        StringBuilder stringBuilder = new StringBuilder("setting locale to:");
        stringBuilder.append(this.currentLocale.getName());
        Log.d(str, stringBuilder.toString());
    }

    public final SupportedLocale<E> getLocaleFromSpecifier(String str) {
        SupportedLocale<E> lookupSupportedLocale = str != null ? lookupSupportedLocale(str) : null;
        if (lookupSupportedLocale == null) {
            String locale = Locale.getDefault().toString();
            String str2 = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(" not found.  Attempting to look for ");
            stringBuilder.append(locale);
            Log.d(str2, stringBuilder.toString());
            lookupSupportedLocale = lookupSupportedLocale(locale);
        }
        if (lookupSupportedLocale != null) {
            return lookupSupportedLocale;
        }
        Log.d(TAG, "defaulting to english");
        return (SupportedLocale) this.supportedLocales.get("en");
    }

    private SupportedLocale<E> lookupSupportedLocale(String str) {
        SupportedLocale<E> supportedLocale = null;
        if (str != null) {
            if (str.length() >= 2) {
                if (SPECIAL_LOCALE_MAP.containsKey(str)) {
                    String str2 = (String) SPECIAL_LOCALE_MAP.get(str);
                    SupportedLocale<E> supportedLocale2 = (SupportedLocale) this.supportedLocales.get(str2);
                    String str3 = TAG;
                    StringBuilder stringBuilder = new StringBuilder("Overriding locale specifier ");
                    stringBuilder.append(str);
                    stringBuilder.append(" with ");
                    stringBuilder.append(str2);
                    Log.d(str3, stringBuilder.toString());
                    supportedLocale = supportedLocale2;
                }
                if (supportedLocale == null) {
                    Object obj;
                    if (str.contains("_")) {
                        obj = str;
                    } else {
                        StringBuilder stringBuilder2 = new StringBuilder();
                        stringBuilder2.append(str);
                        stringBuilder2.append("_");
                        stringBuilder2.append(Locale.getDefault().getCountry());
                        obj = stringBuilder2.toString();
                    }
                    supportedLocale = (SupportedLocale) this.supportedLocales.get(obj);
                }
                if (supportedLocale == null) {
                    supportedLocale = (SupportedLocale) this.supportedLocales.get(str);
                }
                if (supportedLocale == null) {
                    supportedLocale = (SupportedLocale) this.supportedLocales.get(str.substring(0, 2));
                }
                return supportedLocale;
            }
        }
        return null;
    }

    public final String getString(E e) {
        return getString(e, this.currentLocale);
    }

    public final String getString(E e, SupportedLocale<E> supportedLocale) {
        String toUpperCase = Locale.getDefault().getCountry().toUpperCase(Locale.US);
        supportedLocale = supportedLocale.getAdaptedDisplay(e, toUpperCase);
        if (supportedLocale == null) {
            supportedLocale = new StringBuilder("Missing localized string for [");
            supportedLocale.append(this.currentLocale.getName());
            supportedLocale.append(",Key.");
            supportedLocale.append(e.toString());
            supportedLocale.append("]");
            Log.i(TAG, supportedLocale.toString());
            supportedLocale = ((SupportedLocale) this.supportedLocales.get("en")).getAdaptedDisplay(e, toUpperCase);
        }
        if (supportedLocale != null) {
            return supportedLocale;
        }
        supportedLocale = TAG;
        StringBuilder stringBuilder = new StringBuilder("Missing localized string for [en,Key.");
        stringBuilder.append(e.toString());
        stringBuilder.append("], so defaulting to keyname");
        Log.i(supportedLocale, stringBuilder.toString());
        return e.toString();
    }

    private void logMissingLocalizations(String str) {
        SupportedLocale supportedLocale = (SupportedLocale) this.supportedLocales.get(str);
        List<String> arrayList = new ArrayList();
        for (Enum enumR : (Enum[]) this.enumClazz.getEnumConstants()) {
            StringBuilder stringBuilder = new StringBuilder("[");
            stringBuilder.append(str);
            stringBuilder.append(",");
            stringBuilder.append(enumR);
            stringBuilder.append("]");
            String stringBuilder2 = stringBuilder.toString();
            if (supportedLocale.getAdaptedDisplay(enumR, null) == null) {
                arrayList.add("Missing ".concat(String.valueOf(stringBuilder2)));
            }
        }
        for (String i : arrayList) {
            Log.i(TAG, i);
        }
    }
}
