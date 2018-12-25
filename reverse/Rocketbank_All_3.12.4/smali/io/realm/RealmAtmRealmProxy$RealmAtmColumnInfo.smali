.class final Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmAtmRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmAtmRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmAtmColumnInfo"
.end annotation


# instance fields
.field addressIndex:J

.field hoursIndex:J

.field idIndex:J

.field isEurIndex:J

.field isHiddenIndex:J

.field isRurIndex:J

.field isUsdIndex:J

.field latIndex:J

.field lonIndex:J

.field nameIndex:J

.field typeIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 65
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/16 v0, 0xb

    .line 49
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 50
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    const-string v0, "isEur"

    .line 51
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    const-string v0, "isHidden"

    .line 52
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    const-string v0, "isRur"

    .line 53
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    const-string v0, "isUsd"

    .line 54
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    const-string v0, "lat"

    .line 55
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    const-string v0, "lon"

    .line 56
    sget-object v1, Lio/realm/RealmFieldType;->FLOAT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    const-string v0, "address"

    .line 57
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    const-string v0, "hours"

    .line 58
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    const-string v0, "name"

    .line 59
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    const-string v0, "type"

    .line 60
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 70
    new-instance v0, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 75
    check-cast p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    .line 76
    check-cast p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;

    .line 77
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->idIndex:J

    .line 78
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isEurIndex:J

    .line 79
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isHiddenIndex:J

    .line 80
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isRurIndex:J

    .line 81
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->isUsdIndex:J

    .line 82
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->latIndex:J

    .line 83
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->lonIndex:J

    .line 84
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->addressIndex:J

    .line 85
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->hoursIndex:J

    .line 86
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->nameIndex:J

    .line 87
    iget-wide v0, p1, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    iput-wide v0, p2, Lio/realm/RealmAtmRealmProxy$RealmAtmColumnInfo;->typeIndex:J

    return-void
.end method
