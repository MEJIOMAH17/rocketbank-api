package ru.rocketbank.core.manager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmConfiguration.Builder;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.Atm;
import ru.rocketbank.core.model.RegistrationStatus;
import ru.rocketbank.core.model.dto.Atms;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.realm.RealmAtm;
import ru.rocketbank.core.realm.module.StorageModule;
import ru.rocketbank.core.user.Authorization;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

/* compiled from: AtmsManager.kt */
public final class AtmsManager {
    private static final String ATMS_FILE_NAME = "atms99.realm";
    private static final String ATMS_PREF = "ATMS_PREF_4";
    private static final String ATMS_UPDATE_TIME = "ATMS_UPDATE_TIME_4";
    public static final Companion Companion = new Companion();
    private static final String LAST_VERSION_CODE = "LAST_VERSION_CODE_X_X";
    private static final String TAG_ATMS = "ATMS";
    private final Authorization authorization;
    private Context context;
    private RealmConfiguration realmConfiguration;
    private final RocketAPI rocketApi;

    /* compiled from: AtmsManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: AtmsManager.kt */
    public interface RecreateListener {
        void onRealmRecreated();
    }

    public AtmsManager(Authorization authorization, RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(authorization, "authorization");
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketApi");
        this.authorization = authorization;
        this.rocketApi = rocketAPI;
    }

    public static final /* synthetic */ Context access$getContext$p(AtmsManager atmsManager) {
        atmsManager = atmsManager.context;
        if (atmsManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        return atmsManager;
    }

    public final void onCreate(Context context) throws IOException {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.realmConfiguration = getConfiguration(context);
        refreshData(null);
    }

    private final void refreshData(RecreateListener recreateListener) {
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        String packageName = context.getPackageName();
        Context context2 = this.context;
        if (context2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        PackageInfo packageInfo = context2.getPackageManager().getPackageInfo(packageName, 0);
        if (packageInfo != null) {
            context2 = this.context;
            if (context2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("context");
            }
            if (context2.getSharedPreferences(ATMS_PREF, 0).getInt(LAST_VERSION_CODE, 0) != packageInfo.versionCode) {
                loadFromFile(recreateListener);
                setLastVersionCode(packageInfo.versionCode);
                return;
            }
        }
        loadFromFile(recreateListener);
    }

    private final void loadFromFile(RecreateListener recreateListener) throws IOException {
        Log.v(TAG_ATMS, "load from file");
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        Observable.just(context.getAssets().open("atms.json")).map(new AtmsManager$loadFromFile$1(this)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new AtmsManager$loadFromFile$2(this, recreateListener));
    }

    public static void onDestroy() {
        Log.v(TAG_ATMS, "onDestroy");
    }

    private final Long loadFromFile(Reader reader) {
        Gson gson = new Gson();
        JsonReader jsonReader = new JsonReader(reader);
        reader = this.context;
        if (reader == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        int i = 0;
        long j = reader.getSharedPreferences(ATMS_PREF, 0).getLong(ATMS_UPDATE_TIME, 0);
        Atms atms = (Atms) gson.fromJson(jsonReader, (Type) Atms.class);
        Intrinsics.checkExpressionValueIsNotNull(atms, "atms");
        if (!atms.isEmpty()) {
            Realm instance = Realm.getInstance(this.realmConfiguration);
            if (atms.getTime().longValue() <= j && j != 0) {
                Intrinsics.checkExpressionValueIsNotNull(instance, "realm");
                if (!instance.isEmpty()) {
                    instance.close();
                    return Long.valueOf(j);
                }
            }
            instance.beginTransaction();
            List atms2 = atms.getAtms();
            try {
                List atms3 = atms.getAtms();
                Intrinsics.checkExpressionValueIsNotNull(atms3, "atms.atms");
                int size = atms3.size();
                while (i < size) {
                    Atm atm = (Atm) atms2.get(i);
                    RealmAtm realmAtm = new RealmAtm();
                    realmAtm.realmSet$name(atm.getName());
                    realmAtm.realmSet$address(atm.getAddress());
                    realmAtm.realmSet$isEur(atm.getEur());
                    realmAtm.realmSet$isHidden(atm.getHidden());
                    realmAtm.realmSet$isRur(atm.getRur());
                    realmAtm.realmSet$id(atm.getId());
                    realmAtm.realmSet$lat(atm.getLat());
                    realmAtm.realmSet$lon(atm.getLon());
                    realmAtm.realmSet$hours(atm.getHours());
                    realmAtm.realmSet$isUsd(atm.getUsd());
                    String type = atm.getType();
                    if (type == null) {
                        type = "none";
                    }
                    Intrinsics.checkParameterIsNotNull(type, "<set-?>");
                    realmAtm.realmSet$type(type);
                    instance.copyToRealmOrUpdate(realmAtm);
                    i++;
                }
                instance.commitTransaction();
                instance.close();
            } catch (Throwable th) {
                instance.close();
            }
        }
        return atms.getTime();
    }

    public final void recreateRealmWithListener(RecreateListener recreateListener) {
        Intrinsics.checkParameterIsNotNull(recreateListener, "listener");
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        File filesDir = context.getFilesDir();
        Intrinsics.checkExpressionValueIsNotNull(filesDir, "context.filesDir");
        new File(filesDir.getAbsolutePath(), ATMS_FILE_NAME).delete();
        refreshData(recreateListener);
    }

    public final void updateMap(List<Atm> list) {
        Intrinsics.checkParameterIsNotNull(list, "atmList");
        Realm instance = Realm.getInstance(this.realmConfiguration);
        try {
            instance.beginTransaction();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Atm atm = (Atm) list.get(i);
                RealmAtm realmAtm = new RealmAtm();
                realmAtm.realmSet$id(atm.getId());
                realmAtm.realmSet$name(atm.getName());
                realmAtm.realmSet$address(atm.getAddress());
                realmAtm.realmSet$isEur(atm.getEur());
                realmAtm.realmSet$isHidden(atm.getHidden());
                realmAtm.realmSet$isRur(atm.getRur());
                realmAtm.realmSet$lat(atm.getLat());
                realmAtm.realmSet$lon(atm.getLon());
                realmAtm.realmSet$hours(atm.getHours());
                realmAtm.realmSet$isUsd(atm.getUsd());
                String type = atm.getType();
                if (type == null) {
                    type = "none";
                }
                Intrinsics.checkParameterIsNotNull(type, "<set-?>");
                realmAtm.realmSet$type(type);
                instance.copyToRealmOrUpdate(realmAtm);
            }
            instance.commitTransaction();
            instance.close();
        } catch (Throwable th) {
            instance.close();
        }
    }

    private final void setLastVersionCode(int i) {
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        context.getSharedPreferences(ATMS_PREF, 0).edit().putInt(LAST_VERSION_CODE, i).commit();
    }

    public static RealmConfiguration getConfiguration(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        context = new Builder().name(ATMS_FILE_NAME).deleteRealmIfMigrationNeeded().modules(new StorageModule(), new Object[0]).build();
        Intrinsics.checkExpressionValueIsNotNull(context, "RealmConfiguration.Build…\n                .build()");
        return context;
    }

    public final void requireUpdate(int i) {
        Context context = this.context;
        if (context == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        }
        long j = context.getSharedPreferences(ATMS_PREF, 0).getLong(ATMS_UPDATE_TIME, 0);
        if (((long) i) != j) {
            i = this.authorization;
            i = (i.getToken() == null || Intrinsics.areEqual(RegistrationStatus.UserFeed, i.getStatus()) == 0) ? 0 : 1;
            if (i != 0) {
                i = this.rocketApi;
                Context context2 = this.context;
                if (context2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("context");
                }
                i.getAtmsStartFrom(context2.getSharedPreferences(ATMS_PREF, 0).getLong(ATMS_UPDATE_TIME, 0)).map(new AtmsManager$requireUpdate$1(this, j)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new AtmsManager$requireUpdate$2(this));
            }
        }
    }
}
