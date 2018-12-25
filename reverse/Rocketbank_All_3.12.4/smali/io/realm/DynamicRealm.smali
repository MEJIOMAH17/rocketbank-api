.class public Lio/realm/DynamicRealm;
.super Lio/realm/BaseRealm;
.source "DynamicRealm.java"


# direct methods
.method private constructor <init>(Lio/realm/RealmCache;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lio/realm/BaseRealm;-><init>(Lio/realm/RealmCache;)V

    return-void
.end method

.method static createInstance(Lio/realm/RealmCache;)Lio/realm/DynamicRealm;
    .locals 1

    .line 235
    new-instance v0, Lio/realm/DynamicRealm;

    invoke-direct {v0, p0}, Lio/realm/DynamicRealm;-><init>(Lio/realm/RealmCache;)V

    return-object v0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;
    .locals 1

    if-nez p0, :cond_0

    .line 70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_0
    const-class v0, Lio/realm/DynamicRealm;

    invoke-static {p0, v0}, Lio/realm/RealmCache;->createRealmOrGetFromCache(Lio/realm/RealmConfiguration;Ljava/lang/Class;)Lio/realm/BaseRealm;

    move-result-object p0

    check-cast p0, Lio/realm/DynamicRealm;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic beginTransaction()V
    .locals 0

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->beginTransaction()V

    return-void
.end method

.method public final bridge synthetic cancelTransaction()V
    .locals 0

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->cancelTransaction()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->close()V

    return-void
.end method

.method public final bridge synthetic commitTransaction()V
    .locals 0

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->commitTransaction()V

    return-void
.end method

.method public final bridge synthetic deleteAll()V
    .locals 0

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->deleteAll()V

    return-void
.end method

.method public final bridge synthetic getConfiguration()Lio/realm/RealmConfiguration;
    .locals 1

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPath()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getSchema()Lio/realm/RealmSchema;
    .locals 1

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getVersion()J
    .locals 2

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->getVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isInTransaction()Z
    .locals 1

    .line 48
    invoke-super {p0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method
