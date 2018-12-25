.class final Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "RealmFriendRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmFriendRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealmFriendColumnInfo"
.end annotation


# instance fields
.field emailIndex:J

.field firstNameIndex:J

.field idIndex:J

.field lastNameIndex:J

.field mobilePhoneIndex:J

.field userpicUrlIndex:J


# direct methods
.method private constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 55
    invoke-virtual {p0, p1, p0}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Table;)V
    .locals 2

    const/4 v0, 0x6

    .line 44
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "id"

    .line 45
    sget-object v1, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->idIndex:J

    const-string v0, "userpicUrl"

    .line 46
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->userpicUrlIndex:J

    const-string v0, "firstName"

    .line 47
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->firstNameIndex:J

    const-string v0, "lastName"

    .line 48
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->lastNameIndex:J

    const-string v0, "mobilePhone"

    .line 49
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->mobilePhoneIndex:J

    const-string v0, "email"

    .line 50
    sget-object v1, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    invoke-virtual {p0, p1, v0, v1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->addColumnDetails(Lio/realm/internal/Table;Ljava/lang/String;Lio/realm/RealmFieldType;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->emailIndex:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 60
    new-instance v0, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 65
    check-cast p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;

    .line 66
    check-cast p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;

    .line 67
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->idIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->idIndex:J

    .line 68
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->userpicUrlIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->userpicUrlIndex:J

    .line 69
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->firstNameIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->firstNameIndex:J

    .line 70
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->lastNameIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->lastNameIndex:J

    .line 71
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->mobilePhoneIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->mobilePhoneIndex:J

    .line 72
    iget-wide v0, p1, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->emailIndex:J

    iput-wide v0, p2, Lio/realm/RealmFriendRealmProxy$RealmFriendColumnInfo;->emailIndex:J

    return-void
.end method
