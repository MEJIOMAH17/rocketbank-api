.class Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;
.super Ljava/lang/Object;
.source "PresenceChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/channel/impl/PresenceChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Presence"
.end annotation


# instance fields
.field public presence:Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presence"
    .end annotation
.end field

.field final synthetic this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;


# direct methods
.method private constructor <init>(Lcom/pusher/client/channel/impl/PresenceChannelImpl;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$Presence;->this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
