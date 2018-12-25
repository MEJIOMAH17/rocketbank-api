package io.realm;

public class DynamicRealm extends BaseRealm {
    public final /* bridge */ /* synthetic */ void beginTransaction() {
        super.beginTransaction();
    }

    public final /* bridge */ /* synthetic */ void cancelTransaction() {
        super.cancelTransaction();
    }

    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    public final /* bridge */ /* synthetic */ void commitTransaction() {
        super.commitTransaction();
    }

    public final /* bridge */ /* synthetic */ void deleteAll() {
        super.deleteAll();
    }

    public final /* bridge */ /* synthetic */ RealmConfiguration getConfiguration() {
        return super.getConfiguration();
    }

    public final /* bridge */ /* synthetic */ String getPath() {
        return super.getPath();
    }

    public final /* bridge */ /* synthetic */ RealmSchema getSchema() {
        return super.getSchema();
    }

    public final /* bridge */ /* synthetic */ long getVersion() {
        return super.getVersion();
    }

    public final /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    public final /* bridge */ /* synthetic */ boolean isInTransaction() {
        return super.isInTransaction();
    }

    private DynamicRealm(RealmCache realmCache) {
        super(realmCache);
    }

    public static DynamicRealm getInstance(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return (DynamicRealm) RealmCache.createRealmOrGetFromCache(realmConfiguration, DynamicRealm.class);
        }
        throw new IllegalArgumentException("A non-null RealmConfiguration must be provided");
    }

    static DynamicRealm createInstance(RealmCache realmCache) {
        return new DynamicRealm(realmCache);
    }
}
