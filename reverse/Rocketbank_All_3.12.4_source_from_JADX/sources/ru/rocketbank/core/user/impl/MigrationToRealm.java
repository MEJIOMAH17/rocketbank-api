package ru.rocketbank.core.user.impl;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AppInfoManager;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.AuthorizationStorage;

/* compiled from: MigrationToRealm.kt */
public final class MigrationToRealm {
    private static final String ACTIVATION = "activation";
    private static final String AVATAR = "avatar";
    private static final String COVER = "cover";
    private static final String DEVICE_ID = "device_id";
    private static final String FIRST_NAME = "first_name";
    private static final String INIT = "init";
    public static final MigrationToRealm INSTANCE = new MigrationToRealm();
    private static final String LOGIN = "login";
    private static final String PERMALINK = "permalink";
    private static final String PROVIDERS_TIME = "providers_time_87";
    private static final String STATUS = "status";
    private static final String TOKEN = "token";
    private static final String VERSION = "version";

    private MigrationToRealm() {
    }

    public static void migrate(Context context, AuthorizationStorage authorizationStorage, AppInfoManager appInfoManager) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(authorizationStorage, "authorizationStorage");
        Intrinsics.checkParameterIsNotNull(appInfoManager, "appInfoManager");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        context = context.getSharedPreferences("MIGARATE_XXX", 0);
        if (!context.getBoolean(INIT, false)) {
            Intrinsics.checkExpressionValueIsNotNull(sharedPreferences, "sharedPreferences");
            String string = sharedPreferences.getString(AVATAR, null);
            String string2 = sharedPreferences.getString(COVER, null);
            String string3 = sharedPreferences.getString(FIRST_NAME, null);
            String string4 = sharedPreferences.getString(LOGIN, null);
            String string5 = sharedPreferences.getString(STATUS, null);
            String string6 = sharedPreferences.getString(TOKEN, null);
            String string7 = sharedPreferences.getString(ACTIVATION, null);
            int i = sharedPreferences.getInt(PROVIDERS_TIME, 0);
            String string8 = sharedPreferences.getString(DEVICE_ID, null);
            UserData userData = new UserData();
            userData.realmSet$login(string4);
            userData.realmSet$firstName(string3);
            userData.realmSet$token(string6);
            userData.realmSet$status(string5);
            userData.realmSet$avatar(string);
            userData.realmSet$cover(string2);
            userData.realmSet$status(string5);
            userData.realmSet$activation(string7);
            userData.realmSet$providersHash(i);
            userData.realmSet$deviceId(string8);
            authorizationStorage.storeState(userData);
            authorizationStorage = appInfoManager.generateDeviceData();
            string = sharedPreferences.getString(DEVICE_ID, authorizationStorage.realmGet$deviceId());
            if (!(string == null || StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) "ANDROID", false, 2, null))) {
                String concat = "ANDROID_".concat(String.valueOf(string));
                if (concat == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                string = concat.toUpperCase();
                Intrinsics.checkExpressionValueIsNotNull(string, "(this as java.lang.String).toUpperCase()");
            }
            authorizationStorage.realmSet$activation(sharedPreferences.getString(ACTIVATION, authorizationStorage.realmGet$activation()));
            authorizationStorage.realmSet$deviceId(string);
            appInfoManager.updateDeviceData(authorizationStorage);
            context.edit().putBoolean(INIT, true).commit();
            sharedPreferences.edit().clear();
        }
    }
}
