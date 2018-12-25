package com.crashlytics.android.answers;

import android.os.Bundle;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class FirebaseAnalyticsEventMapper {
    private static final Set<String> EVENT_NAMES = new HashSet(Arrays.asList(new String[]{"app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"}));

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.crashlytics.android.answers.FirebaseAnalyticsEvent mapEvent(com.crashlytics.android.answers.SessionEvent r8) {
        /*
        r0 = com.crashlytics.android.answers.SessionEvent.Type.CUSTOM;
        r1 = r8.type;
        r0 = r0.equals(r1);
        r1 = 0;
        r2 = 1;
        if (r0 == 0) goto L_0x0012;
    L_0x000c:
        r0 = r8.customType;
        if (r0 == 0) goto L_0x0012;
    L_0x0010:
        r0 = r2;
        goto L_0x0013;
    L_0x0012:
        r0 = r1;
    L_0x0013:
        r3 = com.crashlytics.android.answers.SessionEvent.Type.PREDEFINED;
        r4 = r8.type;
        r3 = r3.equals(r4);
        if (r3 == 0) goto L_0x0023;
    L_0x001d:
        r3 = r8.predefinedType;
        if (r3 == 0) goto L_0x0023;
    L_0x0021:
        r3 = r2;
        goto L_0x0024;
    L_0x0023:
        r3 = r1;
    L_0x0024:
        r4 = 0;
        if (r0 != 0) goto L_0x002a;
    L_0x0027:
        if (r3 != 0) goto L_0x002a;
    L_0x0029:
        return r4;
    L_0x002a:
        if (r3 == 0) goto L_0x037b;
    L_0x002c:
        r0 = new android.os.Bundle;
        r0.<init>();
        r5 = "purchase";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x00a3;
    L_0x003b:
        r5 = "item_id";
        r6 = r8.predefinedAttributes;
        r7 = "itemId";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x004c;
    L_0x0049:
        r0.putString(r5, r6);
    L_0x004c:
        r5 = "item_name";
        r6 = r8.predefinedAttributes;
        r7 = "itemName";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x005d;
    L_0x005a:
        r0.putString(r5, r6);
    L_0x005d:
        r5 = "item_category";
        r6 = r8.predefinedAttributes;
        r7 = "itemType";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x006e;
    L_0x006b:
        r0.putString(r5, r6);
    L_0x006e:
        r5 = "value";
        r6 = r8.predefinedAttributes;
        r7 = "itemPrice";
        r6 = r6.get(r7);
        r6 = mapPriceValue(r6);
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x0083;
    L_0x0082:
        goto L_0x0087;
    L_0x0083:
        r4 = java.lang.Double.valueOf(r6);
    L_0x0087:
        if (r4 == 0) goto L_0x0090;
    L_0x0089:
        r6 = r4.doubleValue();
        r0.putDouble(r5, r6);
    L_0x0090:
        r4 = "currency";
        r5 = r8.predefinedAttributes;
        r6 = "currency";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x009e:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x00a3:
        r5 = "addToCart";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x013f;
    L_0x00ad:
        r5 = "item_id";
        r6 = r8.predefinedAttributes;
        r7 = "itemId";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x00be;
    L_0x00bb:
        r0.putString(r5, r6);
    L_0x00be:
        r5 = "item_name";
        r6 = r8.predefinedAttributes;
        r7 = "itemName";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x00cf;
    L_0x00cc:
        r0.putString(r5, r6);
    L_0x00cf:
        r5 = "item_category";
        r6 = r8.predefinedAttributes;
        r7 = "itemType";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x00e0;
    L_0x00dd:
        r0.putString(r5, r6);
    L_0x00e0:
        r5 = "price";
        r6 = r8.predefinedAttributes;
        r7 = "itemPrice";
        r6 = r6.get(r7);
        r6 = mapPriceValue(r6);
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x00f6;
    L_0x00f4:
        r6 = r4;
        goto L_0x00fa;
    L_0x00f6:
        r6 = java.lang.Double.valueOf(r6);
    L_0x00fa:
        if (r6 == 0) goto L_0x0103;
    L_0x00fc:
        r6 = r6.doubleValue();
        r0.putDouble(r5, r6);
    L_0x0103:
        r5 = "value";
        r6 = r8.predefinedAttributes;
        r7 = "itemPrice";
        r6 = r6.get(r7);
        r6 = mapPriceValue(r6);
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x0118;
    L_0x0117:
        goto L_0x011c;
    L_0x0118:
        r4 = java.lang.Double.valueOf(r6);
    L_0x011c:
        if (r4 == 0) goto L_0x0125;
    L_0x011e:
        r6 = r4.doubleValue();
        r0.putDouble(r5, r6);
    L_0x0125:
        r4 = "currency";
        r5 = r8.predefinedAttributes;
        r6 = "currency";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0136;
    L_0x0133:
        r0.putString(r4, r5);
    L_0x0136:
        r4 = "quantity";
        r5 = 1;
        r0.putLong(r4, r5);
        goto L_0x0375;
    L_0x013f:
        r5 = "startCheckout";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x019c;
    L_0x0149:
        r5 = "quantity";
        r6 = r8.predefinedAttributes;
        r7 = "itemCount";
        r6 = r6.get(r7);
        r6 = (java.lang.Integer) r6;
        r6 = r6.intValue();
        r6 = (long) r6;
        r6 = java.lang.Long.valueOf(r6);
        if (r6 == 0) goto L_0x0167;
    L_0x0160:
        r6 = r6.longValue();
        r0.putLong(r5, r6);
    L_0x0167:
        r5 = "value";
        r6 = r8.predefinedAttributes;
        r7 = "totalPrice";
        r6 = r6.get(r7);
        r6 = mapPriceValue(r6);
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x017c;
    L_0x017b:
        goto L_0x0180;
    L_0x017c:
        r4 = java.lang.Double.valueOf(r6);
    L_0x0180:
        if (r4 == 0) goto L_0x0189;
    L_0x0182:
        r6 = r4.doubleValue();
        r0.putDouble(r5, r6);
    L_0x0189:
        r4 = "currency";
        r5 = r8.predefinedAttributes;
        r6 = "currency";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x0197:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x019c:
        r5 = "contentView";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x01db;
    L_0x01a6:
        r4 = "content_type";
        r5 = r8.predefinedAttributes;
        r6 = "contentType";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x01b7;
    L_0x01b4:
        r0.putString(r4, r5);
    L_0x01b7:
        r4 = "item_id";
        r5 = r8.predefinedAttributes;
        r6 = "contentId";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x01c8;
    L_0x01c5:
        r0.putString(r4, r5);
    L_0x01c8:
        r4 = "item_name";
        r5 = r8.predefinedAttributes;
        r6 = "contentName";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x01d6:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x01db:
        r5 = "search";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x01f8;
    L_0x01e5:
        r4 = "search_term";
        r5 = r8.predefinedAttributes;
        r6 = "query";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x01f3:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x01f8:
        r5 = "share";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0248;
    L_0x0202:
        r4 = "method";
        r5 = r8.predefinedAttributes;
        r6 = "method";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0213;
    L_0x0210:
        r0.putString(r4, r5);
    L_0x0213:
        r4 = "content_type";
        r5 = r8.predefinedAttributes;
        r6 = "contentType";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0224;
    L_0x0221:
        r0.putString(r4, r5);
    L_0x0224:
        r4 = "item_id";
        r5 = r8.predefinedAttributes;
        r6 = "contentId";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0235;
    L_0x0232:
        r0.putString(r4, r5);
    L_0x0235:
        r4 = "item_name";
        r5 = r8.predefinedAttributes;
        r6 = "contentName";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x0243:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x0248:
        r5 = "rating";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x029a;
    L_0x0252:
        r4 = "rating";
        r5 = r8.predefinedAttributes;
        r6 = "rating";
        r5 = r5.get(r6);
        r5 = java.lang.String.valueOf(r5);
        if (r5 == 0) goto L_0x0265;
    L_0x0262:
        r0.putString(r4, r5);
    L_0x0265:
        r4 = "content_type";
        r5 = r8.predefinedAttributes;
        r6 = "contentType";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0276;
    L_0x0273:
        r0.putString(r4, r5);
    L_0x0276:
        r4 = "item_id";
        r5 = r8.predefinedAttributes;
        r6 = "contentId";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0287;
    L_0x0284:
        r0.putString(r4, r5);
    L_0x0287:
        r4 = "item_name";
        r5 = r8.predefinedAttributes;
        r6 = "contentName";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x0295:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x029a:
        r5 = "signUp";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x02b7;
    L_0x02a4:
        r4 = "method";
        r5 = r8.predefinedAttributes;
        r6 = "method";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x02b2:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x02b7:
        r5 = "login";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x02d4;
    L_0x02c1:
        r4 = "method";
        r5 = r8.predefinedAttributes;
        r6 = "method";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x02cf:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x02d4:
        r5 = "invite";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x02f1;
    L_0x02de:
        r4 = "method";
        r5 = r8.predefinedAttributes;
        r6 = "method";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x02ec:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x02f1:
        r5 = "levelStart";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x030d;
    L_0x02fb:
        r4 = "level_name";
        r5 = r8.predefinedAttributes;
        r6 = "levelName";
        r5 = r5.get(r6);
        r5 = (java.lang.String) r5;
        if (r5 == 0) goto L_0x0375;
    L_0x0309:
        r0.putString(r4, r5);
        goto L_0x0375;
    L_0x030d:
        r5 = "levelEnd";
        r6 = r8.predefinedType;
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0375;
    L_0x0317:
        r5 = "score";
        r6 = r8.predefinedAttributes;
        r7 = "score";
        r6 = r6.get(r7);
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x0329;
    L_0x0327:
        r6 = r4;
        goto L_0x032d;
    L_0x0329:
        r6 = java.lang.Double.valueOf(r6);
    L_0x032d:
        r6 = java.lang.String.valueOf(r6);
        if (r6 != 0) goto L_0x0335;
    L_0x0333:
        r6 = r4;
        goto L_0x0339;
    L_0x0335:
        r6 = java.lang.Double.valueOf(r6);
    L_0x0339:
        if (r6 == 0) goto L_0x0342;
    L_0x033b:
        r6 = r6.doubleValue();
        r0.putDouble(r5, r6);
    L_0x0342:
        r5 = "level_name";
        r6 = r8.predefinedAttributes;
        r7 = "levelName";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 == 0) goto L_0x0353;
    L_0x0350:
        r0.putString(r5, r6);
    L_0x0353:
        r5 = "success";
        r6 = r8.predefinedAttributes;
        r7 = "success";
        r6 = r6.get(r7);
        r6 = (java.lang.String) r6;
        if (r6 != 0) goto L_0x0362;
    L_0x0361:
        goto L_0x036c;
    L_0x0362:
        r4 = "true";
        r4 = r6.equals(r4);
        r4 = java.lang.Integer.valueOf(r4);
    L_0x036c:
        if (r4 == 0) goto L_0x0375;
    L_0x036e:
        r4 = r4.intValue();
        r0.putInt(r5, r4);
    L_0x0375:
        r4 = r8.customAttributes;
        mapCustomEventAttributes(r0, r4);
        goto L_0x0389;
    L_0x037b:
        r0 = new android.os.Bundle;
        r0.<init>();
        r4 = r8.customAttributes;
        if (r4 == 0) goto L_0x0389;
    L_0x0384:
        r4 = r8.customAttributes;
        mapCustomEventAttributes(r0, r4);
    L_0x0389:
        if (r3 == 0) goto L_0x049d;
    L_0x038b:
        r3 = r8.predefinedAttributes;
        r4 = "success";
        r3 = r3.get(r4);
        r3 = (java.lang.String) r3;
        if (r3 == 0) goto L_0x039f;
    L_0x0397:
        r3 = java.lang.Boolean.parseBoolean(r3);
        if (r3 != 0) goto L_0x039f;
    L_0x039d:
        r3 = r2;
        goto L_0x03a0;
    L_0x039f:
        r3 = r1;
    L_0x03a0:
        r8 = r8.predefinedType;
        r4 = 2;
        r5 = -1;
        if (r3 == 0) goto L_0x03e9;
    L_0x03a6:
        r3 = r8.hashCode();
        r6 = -902468296; // 0xffffffffca356d38 float:-2972494.0 double:NaN;
        if (r3 == r6) goto L_0x03ce;
    L_0x03af:
        r6 = 103149417; // 0x625ef69 float:3.1208942E-35 double:5.09625833E-316;
        if (r3 == r6) goto L_0x03c4;
    L_0x03b4:
        r6 = 1743324417; // 0x67e90501 float:2.2008074E24 double:8.61316704E-315;
        if (r3 == r6) goto L_0x03ba;
    L_0x03b9:
        goto L_0x03d8;
    L_0x03ba:
        r3 = "purchase";
        r3 = r8.equals(r3);
        if (r3 == 0) goto L_0x03d8;
    L_0x03c2:
        r3 = r1;
        goto L_0x03d9;
    L_0x03c4:
        r3 = "login";
        r3 = r8.equals(r3);
        if (r3 == 0) goto L_0x03d8;
    L_0x03cc:
        r3 = r4;
        goto L_0x03d9;
    L_0x03ce:
        r3 = "signUp";
        r3 = r8.equals(r3);
        if (r3 == 0) goto L_0x03d8;
    L_0x03d6:
        r3 = r2;
        goto L_0x03d9;
    L_0x03d8:
        r3 = r5;
    L_0x03d9:
        switch(r3) {
            case 0: goto L_0x03e5;
            case 1: goto L_0x03e1;
            case 2: goto L_0x03dd;
            default: goto L_0x03dc;
        };
    L_0x03dc:
        goto L_0x03e9;
    L_0x03dd:
        r8 = "failed_login";
        goto L_0x04a3;
    L_0x03e1:
        r8 = "failed_sign_up";
        goto L_0x04a3;
    L_0x03e5:
        r8 = "failed_ecommerce_purchase";
        goto L_0x04a3;
    L_0x03e9:
        r3 = r8.hashCode();
        switch(r3) {
            case -2131650889: goto L_0x0465;
            case -1183699191: goto L_0x045a;
            case -938102371: goto L_0x0450;
            case -906336856: goto L_0x0446;
            case -902468296: goto L_0x043c;
            case -389087554: goto L_0x0432;
            case 23457852: goto L_0x0428;
            case 103149417: goto L_0x041d;
            case 109400031: goto L_0x0413;
            case 196004670: goto L_0x0407;
            case 1664021448: goto L_0x03fc;
            case 1743324417: goto L_0x03f2;
            default: goto L_0x03f0;
        };
    L_0x03f0:
        goto L_0x0470;
    L_0x03f2:
        r2 = "purchase";
        r2 = r8.equals(r2);
        if (r2 == 0) goto L_0x0470;
    L_0x03fa:
        goto L_0x0471;
    L_0x03fc:
        r1 = "startCheckout";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0404:
        r1 = r4;
        goto L_0x0471;
    L_0x0407:
        r1 = "levelStart";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x040f:
        r1 = 10;
        goto L_0x0471;
    L_0x0413:
        r1 = "share";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x041b:
        r1 = 5;
        goto L_0x0471;
    L_0x041d:
        r1 = "login";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0425:
        r1 = 8;
        goto L_0x0471;
    L_0x0428:
        r1 = "addToCart";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0430:
        r1 = r2;
        goto L_0x0471;
    L_0x0432:
        r1 = "contentView";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x043a:
        r1 = 3;
        goto L_0x0471;
    L_0x043c:
        r1 = "signUp";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0444:
        r1 = 7;
        goto L_0x0471;
    L_0x0446:
        r1 = "search";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x044e:
        r1 = 4;
        goto L_0x0471;
    L_0x0450:
        r1 = "rating";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0458:
        r1 = 6;
        goto L_0x0471;
    L_0x045a:
        r1 = "invite";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x0462:
        r1 = 9;
        goto L_0x0471;
    L_0x0465:
        r1 = "levelEnd";
        r1 = r8.equals(r1);
        if (r1 == 0) goto L_0x0470;
    L_0x046d:
        r1 = 11;
        goto L_0x0471;
    L_0x0470:
        r1 = r5;
    L_0x0471:
        switch(r1) {
            case 0: goto L_0x049a;
            case 1: goto L_0x0497;
            case 2: goto L_0x0494;
            case 3: goto L_0x0491;
            case 4: goto L_0x048e;
            case 5: goto L_0x048b;
            case 6: goto L_0x0488;
            case 7: goto L_0x0485;
            case 8: goto L_0x0482;
            case 9: goto L_0x047f;
            case 10: goto L_0x047c;
            case 11: goto L_0x0479;
            default: goto L_0x0474;
        };
    L_0x0474:
        r8 = mapCustomEventName(r8);
        goto L_0x04a3;
    L_0x0479:
        r8 = "level_end";
        goto L_0x04a3;
    L_0x047c:
        r8 = "level_start";
        goto L_0x04a3;
    L_0x047f:
        r8 = "invite";
        goto L_0x04a3;
    L_0x0482:
        r8 = "login";
        goto L_0x04a3;
    L_0x0485:
        r8 = "sign_up";
        goto L_0x04a3;
    L_0x0488:
        r8 = "rate_content";
        goto L_0x04a3;
    L_0x048b:
        r8 = "share";
        goto L_0x04a3;
    L_0x048e:
        r8 = "search";
        goto L_0x04a3;
    L_0x0491:
        r8 = "select_content";
        goto L_0x04a3;
    L_0x0494:
        r8 = "begin_checkout";
        goto L_0x04a3;
    L_0x0497:
        r8 = "add_to_cart";
        goto L_0x04a3;
    L_0x049a:
        r8 = "ecommerce_purchase";
        goto L_0x04a3;
    L_0x049d:
        r8 = r8.customType;
        r8 = mapCustomEventName(r8);
    L_0x04a3:
        r1 = io.fabric.sdk.android.Fabric.getLogger();
        r2 = "Answers";
        r3 = "Logging event into firebase...";
        r1.mo768d(r2, r3);
        r1 = new com.crashlytics.android.answers.FirebaseAnalyticsEvent;
        r1.<init>(r8, r0);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapEvent(com.crashlytics.android.answers.SessionEvent):com.crashlytics.android.answers.FirebaseAnalyticsEvent");
    }

    private static String mapCustomEventName(String str) {
        if (str != null) {
            if (str.length() != 0) {
                if (EVENT_NAMES.contains(str)) {
                    return "fabric_".concat(String.valueOf(str));
                }
                str = str.replaceAll("[^\\p{Alnum}_]+", "_");
                if (str.startsWith("ga_") || str.startsWith("google_") || str.startsWith("firebase_") || !Character.isLetter(str.charAt(0))) {
                    str = "fabric_".concat(String.valueOf(str));
                }
                if (str.length() > 40) {
                    str = str.substring(0, 40);
                }
                return str;
            }
        }
        return "fabric_unnamed_event";
    }

    private static Double mapPriceValue(Object obj) {
        Long l = (Long) obj;
        if (l == null) {
            return null;
        }
        return Double.valueOf(new BigDecimal(l.longValue()).divide(AddToCartEvent.MICRO_CONSTANT).doubleValue());
    }

    private static void mapCustomEventAttributes(Bundle bundle, Map<String, Object> map) {
        map = map.entrySet().iterator();
        while (map.hasNext()) {
            Entry entry = (Entry) map.next();
            Object value = entry.getValue();
            String str = (String) entry.getKey();
            if (str != null) {
                if (str.length() != 0) {
                    str = str.replaceAll("[^\\p{Alnum}_]+", "_");
                    if (str.startsWith("ga_") || str.startsWith("google_") || str.startsWith("firebase_") || !Character.isLetter(str.charAt(0))) {
                        str = "fabric_".concat(String.valueOf(str));
                    }
                    if (str.length() > 40) {
                        str = str.substring(0, 40);
                    }
                    if (value instanceof String) {
                        bundle.putString(str, entry.getValue().toString());
                    } else if (value instanceof Double) {
                        bundle.putDouble(str, ((Double) entry.getValue()).doubleValue());
                    } else if (value instanceof Long) {
                        bundle.putLong(str, ((Long) entry.getValue()).longValue());
                    } else if (value instanceof Integer) {
                        bundle.putInt(str, ((Integer) entry.getValue()).intValue());
                    }
                }
            }
            str = "fabric_unnamed_parameter";
            if (value instanceof String) {
                bundle.putString(str, entry.getValue().toString());
            } else if (value instanceof Double) {
                bundle.putDouble(str, ((Double) entry.getValue()).doubleValue());
            } else if (value instanceof Long) {
                bundle.putLong(str, ((Long) entry.getValue()).longValue());
            } else if (value instanceof Integer) {
                bundle.putInt(str, ((Integer) entry.getValue()).intValue());
            }
        }
    }
}
