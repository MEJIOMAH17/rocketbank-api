.class final Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmImageRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmImageRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmImageColumnInfo"
.end annotation


# instance fields
.field colorIndex:J

.field heightIndex:J

.field idIndex:J

.field urlIndex:J

.field widthIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 53
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x5

    .line 43
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 44
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->idIndex:J

    const-string v0, "url"

    .line 45
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->urlIndex:J

    const-string v0, "width"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->widthIndex:J

    const-string v0, "height"

    .line 47
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->heightIndex:J

    const-string v0, "color"

    .line 48
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->colorIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 58
    new-instance v0, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 63
    check-cast p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;

    .line 64
    check-cast p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;

    .line 65
    iget-wide v0, p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->idIndex:J

    .line 66
    iget-wide v0, p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->urlIndex:J

    iput-wide v0, p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->urlIndex:J

    .line 67
    iget-wide v0, p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->widthIndex:J

    iput-wide v0, p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->widthIndex:J

    .line 68
    iget-wide v0, p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->heightIndex:J

    iput-wide v0, p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->heightIndex:J

    .line 69
    iget-wide v0, p1, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->colorIndex:J

    iput-wide v0, p2, Lio/realm/RealmImageRealmProxy$RealmImageColumnInfo;->colorIndex:J

    return-void
.end method
