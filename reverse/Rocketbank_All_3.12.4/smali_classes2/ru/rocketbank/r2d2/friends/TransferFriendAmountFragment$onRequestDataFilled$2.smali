.class final Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$2;
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
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$onRequestDataFilled$2;->this$0:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->onTextChanged()V

    return-void
.end method
