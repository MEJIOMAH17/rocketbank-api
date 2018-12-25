.class Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;
.super Ljava/lang/Object;
.source "PresenceChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/channel/impl/PresenceChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemberData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field public userInfo:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_info"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/pusher/client/channel/impl/PresenceChannelImpl;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$MemberData;->this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
