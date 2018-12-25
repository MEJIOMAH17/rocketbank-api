.class final Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "RefillCashFragment.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 143
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;->access$updateMap(Lru/rocketbank/r2d2/fragments/refill/RefillCashFragment;)V

    return-void
.end method
