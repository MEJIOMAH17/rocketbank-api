.class public final enum Lru/rocketbank/core/network/model/operation/FriendRequestType;
.super Ljava/lang/Enum;
.source "FriendRequestType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/network/model/operation/FriendRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum ExternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum ExternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum InternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum InternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum TransferExternal:Lru/rocketbank/core/network/model/operation/FriendRequestType;

.field public static final enum Unknown:Lru/rocketbank/core/network/model/operation/FriendRequestType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lru/rocketbank/core/network/model/operation/FriendRequestType;

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "InternalIn"

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "InternalOut"

    const/4 v3, 0x1

    .line 5
    invoke-direct {v1, v2, v3, v3}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->InternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "ExternalIn"

    const/4 v3, 0x2

    .line 6
    invoke-direct {v1, v2, v3, v3}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalIn:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "ExternalOut"

    const/4 v3, 0x3

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->ExternalOut:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "TransferExternal"

    const/4 v3, 0x4

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->TransferExternal:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "Unknown"

    const/4 v3, 0x5

    const/16 v4, 0xeee

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->Unknown:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    const-string v2, "None"

    const/4 v3, 0x6

    const/16 v4, 0xfff

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lru/rocketbank/core/network/model/operation/FriendRequestType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lru/rocketbank/core/network/model/operation/FriendRequestType;->None:Lru/rocketbank/core/network/model/operation/FriendRequestType;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->$VALUES:[Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .locals 1

    const-class v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/network/model/operation/FriendRequestType;
    .locals 1

    sget-object v0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->$VALUES:[Lru/rocketbank/core/network/model/operation/FriendRequestType;

    invoke-virtual {v0}, [Lru/rocketbank/core/network/model/operation/FriendRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/network/model/operation/FriendRequestType;

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .line 3
    iget v0, p0, Lru/rocketbank/core/network/model/operation/FriendRequestType;->type:I

    return v0
.end method
