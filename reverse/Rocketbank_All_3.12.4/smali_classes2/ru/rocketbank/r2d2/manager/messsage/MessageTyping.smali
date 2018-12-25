.class public final Lru/rocketbank/r2d2/manager/messsage/MessageTyping;
.super Ljava/lang/Object;
.source "MessageTyping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;,
        Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;
    }
.end annotation


# instance fields
.field private typing:Z

.field private user:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTyping()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping;->typing:Z

    return v0
.end method

.method public final getUser()Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping;->user:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;

    return-object v0
.end method

.method public final setTyping(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping;->typing:Z

    return-void
.end method

.method public final setUser(Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping;->user:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;

    return-void
.end method
