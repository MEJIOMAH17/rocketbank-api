.class final Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmOperationRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmOperationRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmOperationColumnInfo"
.end annotation


# instance fields
.field categoryIndex:J

.field commentIndex:J

.field contextTypeIndex:J

.field coverIndex:J

.field declineReasonIndex:J

.field detailsIndex:J

.field displayMoneyIndex:J

.field friendIndex:J

.field friendTransferTypeIndex:J

.field isHasReceiptIndex:J

.field linkedCardIndex:J

.field merchantIndex:J

.field milesIndex:J

.field mimimilesIndex:J

.field moneyIndex:J

.field receiptUrlIndex:J

.field statusIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 77
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/16 v0, 0x11

    .line 55
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "status"

    .line 56
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->statusIndex:J

    const-string v0, "comment"

    .line 57
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->commentIndex:J

    const-string v0, "details"

    .line 58
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->detailsIndex:J

    const-string v0, "mimimiles"

    .line 59
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->mimimilesIndex:J

    const-string v0, "linkedCard"

    .line 60
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->linkedCardIndex:J

    const-string v0, "displayMoney"

    .line 61
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->displayMoneyIndex:J

    const-string v0, "money"

    .line 62
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->moneyIndex:J

    const-string v0, "category"

    .line 63
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->categoryIndex:J

    const-string v0, "merchant"

    .line 64
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->merchantIndex:J

    const-string v0, "friendTransferType"

    .line 65
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendTransferTypeIndex:J

    const-string v0, "miles"

    .line 66
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->milesIndex:J

    const-string v0, "friend"

    .line 67
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendIndex:J

    const-string v0, "cover"

    .line 68
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->coverIndex:J

    const-string v0, "contextType"

    .line 69
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->contextTypeIndex:J

    const-string v0, "isHasReceipt"

    .line 70
    sget-object v1, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->isHasReceiptIndex:J

    const-string v0, "receiptUrl"

    .line 71
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->receiptUrlIndex:J

    const-string v0, "declineReason"

    .line 72
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->declineReasonIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 82
    new-instance v0, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 87
    check-cast p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;

    .line 88
    check-cast p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;

    .line 89
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->statusIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->statusIndex:J

    .line 90
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->commentIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->commentIndex:J

    .line 91
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->detailsIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->detailsIndex:J

    .line 92
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->mimimilesIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->mimimilesIndex:J

    .line 93
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->linkedCardIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->linkedCardIndex:J

    .line 94
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->displayMoneyIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->displayMoneyIndex:J

    .line 95
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->moneyIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->moneyIndex:J

    .line 96
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->categoryIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->categoryIndex:J

    .line 97
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->merchantIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->merchantIndex:J

    .line 98
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendTransferTypeIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendTransferTypeIndex:J

    .line 99
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->milesIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->milesIndex:J

    .line 100
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->friendIndex:J

    .line 101
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->coverIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->coverIndex:J

    .line 102
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->contextTypeIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->contextTypeIndex:J

    .line 103
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->isHasReceiptIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->isHasReceiptIndex:J

    .line 104
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->receiptUrlIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->receiptUrlIndex:J

    .line 105
    iget-wide v0, p1, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->declineReasonIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationRealmProxy$RealmOperationColumnInfo;->declineReasonIndex:J

    return-void
.end method
