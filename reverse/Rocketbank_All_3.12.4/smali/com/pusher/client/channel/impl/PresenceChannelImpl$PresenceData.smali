.class Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;
.super Ljava/lang/Object;
.source "PresenceChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pusher/client/channel/impl/PresenceChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceData"
.end annotation


# instance fields
.field public count:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public hash:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public ids:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;


# direct methods
.method private constructor <init>(Lcom/pusher/client/channel/impl/PresenceChannelImpl;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PresenceChannelImpl$PresenceData;->this$0:Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
