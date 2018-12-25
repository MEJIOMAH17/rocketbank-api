.class public final Lru/rocketbank/r2d2/manager/messsage/MessageNotification;
.super Ljava/lang/Object;
.source "MessageNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

.field private static final TYPE_CONNECTED:I = 0x0

.field private static final TYPE_DISCONNECTED:I = 0x1

.field private static final TYPE_MESSAGE:I = 0x2

.field private static final TYPE_READ:I = 0x4

.field private static final TYPE_TYPING:I = 0x3


# instance fields
.field private channelName:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private eventName:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->Companion:Lru/rocketbank/r2d2/manager/messsage/MessageNotification$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTYPE_CONNECTED$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->TYPE_CONNECTED:I

    return v0
.end method

.method public static final synthetic access$getTYPE_DISCONNECTED$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->TYPE_DISCONNECTED:I

    return v0
.end method

.method public static final synthetic access$getTYPE_MESSAGE$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->TYPE_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getTYPE_READ$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->TYPE_READ:I

    return v0
.end method

.method public static final synthetic access$getTYPE_TYPING$cp()I
    .locals 1

    .line 3
    sget v0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->TYPE_TYPING:I

    return v0
.end method


# virtual methods
.method public final getChannelName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 4
    iget v0, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->type:I

    return v0
.end method

.method public final setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->channelName:Ljava/lang/String;

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->data:Ljava/lang/String;

    return-void
.end method

.method public final setEventName(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->eventName:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 4
    iput p1, p0, Lru/rocketbank/r2d2/manager/messsage/MessageNotification;->type:I

    return-void
.end method
