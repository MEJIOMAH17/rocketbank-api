.class Lio/realm/OsRealmObjectSchema;
.super Lio/realm/RealmObjectSchema;
.source "OsRealmObjectSchema.java"


# instance fields
.field private nativePtr:J


# direct methods
.method private constructor <init>(Lio/realm/RealmSchema;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lio/realm/RealmObjectSchema;-><init>(Lio/realm/RealmSchema;)V

    .line 40
    iput-wide p2, p0, Lio/realm/OsRealmObjectSchema;->nativePtr:J

    return-void
.end method

.method constructor <init>(Lio/realm/RealmSchema;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-static {p2}, Lio/realm/OsRealmObjectSchema;->nativeCreateRealmObjectSchema(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lio/realm/OsRealmObjectSchema;-><init>(Lio/realm/RealmSchema;J)V

    return-void
.end method

.method private add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/OsRealmObjectSchema;
    .locals 3

    .line 179
    new-instance v0, Lio/realm/Property;

    invoke-direct {v0, p1, p2, p3}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)V

    .line 181
    :try_start_0
    iget-wide p1, p0, Lio/realm/OsRealmObjectSchema;->nativePtr:J

    invoke-virtual {v0}, Lio/realm/Property;->getNativePtr()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lio/realm/OsRealmObjectSchema;->nativeAddProperty(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Lio/realm/Property;->close()V

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/realm/Property;->close()V

    throw p1
.end method

.method private add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/OsRealmObjectSchema;
    .locals 7

    .line 168
    new-instance v6, Lio/realm/Property;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/realm/Property;-><init>(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)V

    .line 170
    :try_start_0
    iget-wide p1, p0, Lio/realm/OsRealmObjectSchema;->nativePtr:J

    invoke-virtual {v6}, Lio/realm/Property;->getNativePtr()J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lio/realm/OsRealmObjectSchema;->nativeAddProperty(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v6}, Lio/realm/Property;->close()V

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {v6}, Lio/realm/Property;->close()V

    throw p1
.end method

.method static native nativeAddProperty(JJ)V
.end method

.method static native nativeClose(J)V
.end method

.method static native nativeCreateRealmObjectSchema(Ljava/lang/String;)J
.end method

.method static native nativeGetClassName(J)Ljava/lang/String;
.end method


# virtual methods
.method final bridge synthetic add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/RealmObjectSchema;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lio/realm/OsRealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;Lio/realm/RealmObjectSchema;)Lio/realm/OsRealmObjectSchema;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/RealmObjectSchema;
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lio/realm/OsRealmObjectSchema;->add(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/OsRealmObjectSchema;

    move-result-object p1

    return-object p1
.end method

.method final getAndCheckFieldIndex(Ljava/lang/String;)J
    .locals 0

    .line 195
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 2

    .line 53
    iget-wide v0, p0, Lio/realm/OsRealmObjectSchema;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/OsRealmObjectSchema;->nativeGetClassName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getTable()Lio/realm/internal/Table;
    .locals 1

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
