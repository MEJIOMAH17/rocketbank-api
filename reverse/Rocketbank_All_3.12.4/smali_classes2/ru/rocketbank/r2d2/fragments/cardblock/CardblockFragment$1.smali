.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$1;
.super Ljava/lang/Object;
.source "CardblockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 125
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/SupportChatActivity;->start(Landroid/content/Context;)V

    return-void
.end method
