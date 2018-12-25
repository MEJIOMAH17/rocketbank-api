package io.card.payment.i18n.locales;

import io.card.payment.i18n.StringKey;
import io.card.payment.i18n.SupportedLocale;
import java.util.HashMap;
import java.util.Map;

public final class LocalizedStringsZH_HANT_TW implements SupportedLocale<StringKey> {
    private static Map<String, String> mAdapted = new HashMap();
    private static Map<StringKey, String> mDisplay = new HashMap();

    public final String getName() {
        return "zh-Hant_TW";
    }

    public final /* bridge */ /* synthetic */ String getAdaptedDisplay(Enum enumR, String str) {
        StringKey stringKey = (StringKey) enumR;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(stringKey.toString());
        stringBuilder.append("|");
        stringBuilder.append(str);
        str = stringBuilder.toString();
        if (mAdapted.containsKey(str)) {
            return (String) mAdapted.get(str);
        }
        return (String) mDisplay.get(stringKey);
    }

    public LocalizedStringsZH_HANT_TW() {
        mDisplay.put(StringKey.CANCEL, "取消");
        mDisplay.put(StringKey.CARDTYPE_AMERICANEXPRESS, "美國運通");
        mDisplay.put(StringKey.CARDTYPE_DISCOVER, "Discover");
        mDisplay.put(StringKey.CARDTYPE_JCB, "JCB");
        mDisplay.put(StringKey.CARDTYPE_MASTERCARD, "MasterCard");
        mDisplay.put(StringKey.CARDTYPE_VISA, "Visa");
        mDisplay.put(StringKey.DONE, "完成");
        mDisplay.put(StringKey.ENTRY_CVV, "信用卡驗證碼");
        mDisplay.put(StringKey.ENTRY_POSTAL_CODE, "郵遞區號");
        mDisplay.put(StringKey.ENTRY_CARDHOLDER_NAME, "持卡人姓名");
        mDisplay.put(StringKey.ENTRY_EXPIRES, "到期日");
        mDisplay.put(StringKey.EXPIRES_PLACEHOLDER, "月 / 年");
        mDisplay.put(StringKey.SCAN_GUIDE, "將信用卡放在此處。\n系統將自動掃描。");
        mDisplay.put(StringKey.KEYBOARD, "鍵盤…");
        mDisplay.put(StringKey.ENTRY_CARD_NUMBER, "卡號");
        mDisplay.put(StringKey.MANUAL_ENTRY_TITLE, "信用卡詳細資料");
        mDisplay.put(StringKey.ERROR_NO_DEVICE_SUPPORT, "此裝置無法使用相機讀取卡號。");
        mDisplay.put(StringKey.ERROR_CAMERA_CONNECT_FAIL, "無法使用相機。");
        mDisplay.put(StringKey.ERROR_CAMERA_UNEXPECTED_FAIL, "啟動相機時發生意外的錯誤。");
    }
}
