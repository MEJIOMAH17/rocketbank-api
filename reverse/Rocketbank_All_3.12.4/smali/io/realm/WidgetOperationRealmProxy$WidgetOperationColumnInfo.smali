.class final Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "WidgetOperationRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/WidgetOperationRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WidgetOperationColumnInfo"
.end annotation


# instance fields
.field amountTextIndex:J

.field bitmapIndex:J

.field iconUrlIndex:J

.field nameIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 51
    invoke-virtual {p0, p1, p0}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x4

    .line 42
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "iconUrl"

    .line 43
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->iconUrlIndex:J

    const-string v0, "name"

    .line 44
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->nameIndex:J

    const-string v0, "amountText"

    .line 45
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->amountTextIndex:J

    const-string v0, "bitmap"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->BINARY:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->bitmapIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 56
    new-instance v0, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 61
    check-cast p1, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;

    .line 62
    check-cast p2, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;

    .line 63
    iget-wide v0, p1, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->iconUrlIndex:J

    iput-wide v0, p2, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->iconUrlIndex:J

    .line 64
    iget-wide v0, p1, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->nameIndex:J

    iput-wide v0, p2, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->nameIndex:J

    .line 65
    iget-wide v0, p1, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->amountTextIndex:J

    iput-wide v0, p2, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->amountTextIndex:J

    .line 66
    iget-wide v0, p1, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->bitmapIndex:J

    iput-wide v0, p2, Lio/realm/WidgetOperationRealmProxy$WidgetOperationColumnInfo;->bitmapIndex:J

    return-void
.end method
