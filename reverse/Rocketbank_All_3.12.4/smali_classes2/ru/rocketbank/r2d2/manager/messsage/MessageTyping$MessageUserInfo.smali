.class public final Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;
.super Ljava/lang/Object;
.source "MessageTyping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/manager/messsage/MessageTyping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageUserInfo"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private permalink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermalink()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;->permalink:Ljava/lang/String;

    return-void
.end method
