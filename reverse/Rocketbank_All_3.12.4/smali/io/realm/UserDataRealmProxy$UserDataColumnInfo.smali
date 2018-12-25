.class final Lio/realm/UserDataRealmProxy$UserDataColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "UserDataRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/UserDataRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserDataColumnInfo"
.end annotation


# instance fields
.field activationIndex:J

.field avatarIndex:J

.field balanceIndex:J

.field cobrandNameIndex:J

.field coverIndex:J

.field deviceIdIndex:J

.field firstNameIndex:J

.field genederIndex:J

.field idIndex:J

.field lastNameIndex:J

.field loginIndex:J

.field milesIndex:J

.field providersHashIndex:J

.field statusIndex:J

.field tokenIndex:J

.field widgetDataIndex:J

.field widgetTokenIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 77
    invoke-virtual {p0, p1, p0}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/16 v0, 0x11

    .line 55
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 56
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->idIndex:J

    const-string v0, "avatar"

    .line 57
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->avatarIndex:J

    const-string v0, "cover"

    .line 58
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->coverIndex:J

    const-string v0, "login"

    .line 59
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->loginIndex:J

    const-string v0, "status"

    .line 60
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->statusIndex:J

    const-string v0, "firstName"

    .line 61
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->firstNameIndex:J

    const-string v0, "lastName"

    .line 62
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->lastNameIndex:J

    const-string v0, "balance"

    .line 63
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->balanceIndex:J

    const-string v0, "miles"

    .line 64
    sget-object v1, Lio/realm/RealmFieldType;->DOUBLE:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->milesIndex:J

    const-string v0, "widgetToken"

    .line 65
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetTokenIndex:J

    const-string v0, "geneder"

    .line 66
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->genederIndex:J

    const-string v0, "cobrandName"

    .line 67
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->cobrandNameIndex:J

    const-string v0, "token"

    .line 68
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->tokenIndex:J

    const-string v0, "activation"

    .line 69
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->activationIndex:J

    const-string v0, "providersHash"

    .line 70
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->providersHashIndex:J

    const-string v0, "deviceId"

    .line 71
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->deviceIdIndex:J

    const-string v0, "widgetData"

    .line 72
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetDataIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 82
    new-instance v0, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 87
    check-cast p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;

    .line 88
    check-cast p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;

    .line 89
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->idIndex:J

    .line 90
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->avatarIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->avatarIndex:J

    .line 91
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->coverIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->coverIndex:J

    .line 92
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->loginIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->loginIndex:J

    .line 93
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->statusIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->statusIndex:J

    .line 94
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->firstNameIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->firstNameIndex:J

    .line 95
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->lastNameIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->lastNameIndex:J

    .line 96
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->balanceIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->balanceIndex:J

    .line 97
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->milesIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->milesIndex:J

    .line 98
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetTokenIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetTokenIndex:J

    .line 99
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->genederIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->genederIndex:J

    .line 100
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->cobrandNameIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->cobrandNameIndex:J

    .line 101
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->tokenIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->tokenIndex:J

    .line 102
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->activationIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->activationIndex:J

    .line 103
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->providersHashIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->providersHashIndex:J

    .line 104
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->deviceIdIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->deviceIdIndex:J

    .line 105
    iget-wide v0, p1, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetDataIndex:J

    iput-wide v0, p2, Lio/realm/UserDataRealmProxy$UserDataColumnInfo;->widgetDataIndex:J

    return-void
.end method
