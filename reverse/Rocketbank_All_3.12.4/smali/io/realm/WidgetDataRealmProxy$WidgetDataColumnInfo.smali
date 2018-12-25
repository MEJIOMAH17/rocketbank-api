.class final Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "WidgetDataRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/WidgetDataRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WidgetDataColumnInfo"
.end annotation


# instance fields
.field balanceIndex:J

.field friendsIndex:J

.field idIndex:J

.field limitIndex:J

.field milesIndex:J

.field numberIndex:J

.field operationIndex:J

.field operatorIndex:J

.field unlimitedCashoutsIndex:J

.field usedOperationIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 63
    invoke-virtual {p0, p1, p0}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/16 v0, 0xa

    .line 48
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 49
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    const-string v0, "balance"

    .line 50
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    const-string v0, "miles"

    .line 51
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    const-string v0, "limit"

    .line 52
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    const-string v0, "usedOperation"

    .line 53
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    const-string v0, "operator"

    .line 54
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    const-string v0, "number"

    .line 55
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    const-string v0, "unlimitedCashouts"

    .line 56
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    const-string v0, "friends"

    .line 57
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    const-string v0, "operation"

    .line 58
    sget-object v1, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 68
    new-instance v0, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 73
    check-cast p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    .line 74
    check-cast p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;

    .line 75
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->idIndex:J

    .line 76
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->balanceIndex:J

    .line 77
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->milesIndex:J

    .line 78
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->limitIndex:J

    .line 79
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->usedOperationIndex:J

    .line 80
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operatorIndex:J

    .line 81
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->numberIndex:J

    .line 82
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->unlimitedCashoutsIndex:J

    .line 83
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->friendsIndex:J

    .line 84
    iget-wide v0, p1, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    iput-wide v0, p2, Lio/realm/WidgetDataRealmProxy$WidgetDataColumnInfo;->operationIndex:J

    return-void
.end method
