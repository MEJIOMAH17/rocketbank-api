.class final Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmMilesRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMilesRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmMilesColumnInfo"
.end annotation


# instance fields
.field amountIndex:J

.field enoughMilesIndex:J

.field statusIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 49
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "amount"

    .line 42
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->amountIndex:J

    const-string v0, "enoughMiles"

    .line 43
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->enoughMilesIndex:J

    const-string v0, "status"

    .line 44
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->statusIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 54
    new-instance v0, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 59
    check-cast p1, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;

    .line 60
    check-cast p2, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;

    .line 61
    iget-wide v0, p1, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->amountIndex:J

    iput-wide v0, p2, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->amountIndex:J

    .line 62
    iget-wide v0, p1, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->enoughMilesIndex:J

    iput-wide v0, p2, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->enoughMilesIndex:J

    .line 63
    iget-wide v0, p1, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->statusIndex:J

    iput-wide v0, p2, Lio/realm/RealmMilesRealmProxy$RealmMilesColumnInfo;->statusIndex:J

    return-void
.end method
