.class final Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmMoneyDataRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmMoneyDataRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmMoneyDataColumnInfo"
.end annotation


# instance fields
.field amountIndex:J

.field currencyCodeIndex:J

.field formattedExactIndex:J

.field formattedIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 51
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x4

    .line 42
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "formatted"

    .line 43
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedIndex:J

    const-string v0, "formattedExact"

    .line 44
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedExactIndex:J

    const-string v0, "amount"

    .line 45
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->amountIndex:J

    const-string v0, "currencyCode"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->currencyCodeIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 56
    new-instance v0, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 61
    check-cast p1, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;

    .line 62
    check-cast p2, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;

    .line 63
    iget-wide v0, p1, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedIndex:J

    iput-wide v0, p2, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedIndex:J

    .line 64
    iget-wide v0, p1, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedExactIndex:J

    iput-wide v0, p2, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->formattedExactIndex:J

    .line 65
    iget-wide v0, p1, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->amountIndex:J

    iput-wide v0, p2, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->amountIndex:J

    .line 66
    iget-wide v0, p1, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->currencyCodeIndex:J

    iput-wide v0, p2, Lio/realm/RealmMoneyDataRealmProxy$RealmMoneyDataColumnInfo;->currencyCodeIndex:J

    return-void
.end method
