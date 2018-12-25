.class final Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmBinRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmBinRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmBinColumnInfo"
.end annotation


# instance fields
.field adviceIndex:J

.field nameIndex:J

.field transferHintIndex:J

.field transferWorksIndex:J

.field worksIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 53
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x5

    .line 43
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "works"

    .line 44
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->worksIndex:J

    const-string v0, "advice"

    .line 45
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->adviceIndex:J

    const-string v0, "transferHint"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferHintIndex:J

    const-string v0, "transferWorks"

    .line 47
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferWorksIndex:J

    const-string v0, "name"

    .line 48
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->nameIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 58
    new-instance v0, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 63
    check-cast p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;

    .line 64
    check-cast p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;

    .line 65
    iget-wide v0, p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->worksIndex:J

    iput-wide v0, p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->worksIndex:J

    .line 66
    iget-wide v0, p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->adviceIndex:J

    iput-wide v0, p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->adviceIndex:J

    .line 67
    iget-wide v0, p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferHintIndex:J

    iput-wide v0, p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferHintIndex:J

    .line 68
    iget-wide v0, p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferWorksIndex:J

    iput-wide v0, p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->transferWorksIndex:J

    .line 69
    iget-wide v0, p1, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/RealmBinRealmProxy$RealmBinColumnInfo;->nameIndex:J

    return-void
.end method
