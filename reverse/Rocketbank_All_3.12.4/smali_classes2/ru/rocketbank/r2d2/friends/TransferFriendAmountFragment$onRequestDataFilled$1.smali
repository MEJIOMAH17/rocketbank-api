.class final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;
.super Ljava/lang/Object;
.source "TransferFriendAmountFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->onRequestDataFilled(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $amount:D

.field final synthetic $comment:Ljava/lang/String;

.field final synthetic $contact:Lru/rocketbank/core/model/contact/Contact;

.field final synthetic this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$contact:Lru/rocketbank/core/model/contact/Contact;

    iput-wide p3, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$amount:D

    iput-object p5, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$contact:Lru/rocketbank/core/model/contact/Contact;

    iget-wide v2, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$amount:D

    iget-object v4, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->$comment:Ljava/lang/String;

    iget-object v5, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$1;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-static {v5}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$getToken$p(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->access$onRequestDataFilled$s-181303887(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
