.class final Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmOperationCategoryRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmOperationCategoryRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmOperationCategoryColumnInfo"
.end annotation


# instance fields
.field displayNameIndex:J

.field fullNameIndex:J

.field iconIndex:J

.field idIndex:J

.field nameIndex:J

.field spentIndex:J

.field subIconIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 57
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x7

    .line 45
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    const-string v0, "fullName"

    .line 47
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    const-string v0, "icon"

    .line 48
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    const-string v0, "subIcon"

    .line 49
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    const-string v0, "displayName"

    .line 50
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    const-string v0, "name"

    .line 51
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    const-string v0, "spent"

    .line 52
    sget-object v1, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 62
    new-instance v0, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 67
    check-cast p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    .line 68
    check-cast p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;

    .line 69
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->idIndex:J

    .line 70
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->fullNameIndex:J

    .line 71
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->iconIndex:J

    .line 72
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->subIconIndex:J

    .line 73
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->displayNameIndex:J

    .line 74
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->nameIndex:J

    .line 75
    iget-wide v0, p1, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    iput-wide v0, p2, Lio/realm/RealmOperationCategoryRealmProxy$RealmOperationCategoryColumnInfo;->spentIndex:J

    return-void
.end method
