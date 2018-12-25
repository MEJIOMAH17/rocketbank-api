.class final Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmLinkedCardRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmLinkedCardRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmLinkedCardColumnInfo"
.end annotation


# instance fields
.field bankIndex:J

.field binIndex:J

.field colorIndex:J

.field feedIconUrlIndex:J

.field logoIndex:J

.field panIndex:J

.field tokenIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 57
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x7

    .line 45
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "pan"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->panIndex:J

    const-string v0, "token"

    .line 47
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->tokenIndex:J

    const-string v0, "bank"

    .line 48
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->bankIndex:J

    const-string v0, "logo"

    .line 49
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->logoIndex:J

    const-string v0, "feedIconUrl"

    .line 50
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->feedIconUrlIndex:J

    const-string v0, "bin"

    .line 51
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->binIndex:J

    const-string v0, "color"

    .line 52
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->colorIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 62
    new-instance v0, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 67
    check-cast p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;

    .line 68
    check-cast p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;

    .line 69
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->panIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->panIndex:J

    .line 70
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->tokenIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->tokenIndex:J

    .line 71
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->bankIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->bankIndex:J

    .line 72
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->logoIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->logoIndex:J

    .line 73
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->feedIconUrlIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->feedIconUrlIndex:J

    .line 74
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->binIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->binIndex:J

    .line 75
    iget-wide v0, p1, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->colorIndex:J

    iput-wide v0, p2, Lio/realm/RealmLinkedCardRealmProxy$RealmLinkedCardColumnInfo;->colorIndex:J

    return-void
.end method
