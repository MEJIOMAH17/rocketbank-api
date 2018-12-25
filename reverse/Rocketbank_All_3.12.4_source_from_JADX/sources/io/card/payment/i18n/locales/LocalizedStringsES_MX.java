package io.card.payment.i18n.locales;

import io.card.payment.i18n.StringKey;
import io.card.payment.i18n.SupportedLocale;
import java.util.HashMap;
import java.util.Map;

public final class LocalizedStringsES_MX implements SupportedLocale<StringKey> {
    private static Map<String, String> mAdapted = new HashMap();
    private static Map<StringKey, String> mDisplay = new HashMap();

    public final String getName() {
        return "es_MX";
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

    public LocalizedStringsES_MX() {
        mDisplay.put(StringKey.CANCEL, "Cancelar");
        mDisplay.put(StringKey.CARDTYPE_AMERICANEXPRESS, "American Express");
        mDisplay.put(StringKey.CARDTYPE_DISCOVER, "Discover");
        mDisplay.put(StringKey.CARDTYPE_JCB, "JCB");
        mDisplay.put(StringKey.CARDTYPE_MASTERCARD, "MasterCard");
        mDisplay.put(StringKey.CARDTYPE_VISA, "Visa");
        mDisplay.put(StringKey.DONE, "Listo");
        mDisplay.put(StringKey.ENTRY_CVV, "CVV");
        mDisplay.put(StringKey.ENTRY_POSTAL_CODE, "Código postal");
        mDisplay.put(StringKey.ENTRY_CARDHOLDER_NAME, "Nombre del titular");
        mDisplay.put(StringKey.ENTRY_EXPIRES, "Vence");
        mDisplay.put(StringKey.EXPIRES_PLACEHOLDER, "MM/AA");
        mDisplay.put(StringKey.SCAN_GUIDE, "Coloque la tarjeta aquí.\nSe escaneará automáticamente.");
        mDisplay.put(StringKey.KEYBOARD, "Teclado…");
        mDisplay.put(StringKey.ENTRY_CARD_NUMBER, "N.° de tarjeta");
        mDisplay.put(StringKey.MANUAL_ENTRY_TITLE, "Detalles de la tarjeta");
        mDisplay.put(StringKey.ERROR_NO_DEVICE_SUPPORT, "Este dispositivo no puede usar la cámara para leer números de tarjeta.");
        mDisplay.put(StringKey.ERROR_CAMERA_CONNECT_FAIL, "La cámara del dispositivo no está disponible.");
        mDisplay.put(StringKey.ERROR_CAMERA_UNEXPECTED_FAIL, "El dispositivo tuvo un error inesperado al abrir la cámara.");
    }
}
