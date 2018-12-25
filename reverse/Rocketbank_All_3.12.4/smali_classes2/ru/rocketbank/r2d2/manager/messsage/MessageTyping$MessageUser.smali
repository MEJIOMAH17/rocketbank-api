.class public final Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;
.super Ljava/lang/Object;
.source "MessageTyping.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/manager/messsage/MessageTyping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageUser"
.end annotation


# instance fields
.field private id:I

.field private info:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;->id:I

    return v0
.end method

.method public final getInfo()Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;->info:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;

    return-object v0
.end method

.method public final setId(I)V
    .locals 0

    .line 12
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;->id:I

    return-void
.end method

.method public final setInfo(Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUser;->info:Lru/rocketbank/r2d2/manager/messsage/MessageTyping$MessageUserInfo;

    return-void
.end method
