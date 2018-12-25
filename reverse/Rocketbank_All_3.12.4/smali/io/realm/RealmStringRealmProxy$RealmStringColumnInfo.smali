.class final Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmStringRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmStringRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmStringColumnInfo"
.end annotation


# instance fields
.field stringIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 1055
    check-cast p1, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    .line 1056
    move-object p2, p0

    check-cast p2, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    .line 1057
    iget-wide v0, p1, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->stringIndex:J

    iput-wide v0, p2, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->stringIndex:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "string"

    .line 40
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->stringIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 50
    new-instance v0, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 55
    check-cast p1, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    .line 56
    check-cast p2, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;

    .line 57
    iget-wide v0, p1, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->stringIndex:J

    iput-wide v0, p2, Lio/realm/RealmStringRealmProxy$RealmStringColumnInfo;->stringIndex:J

    return-void
.end method
