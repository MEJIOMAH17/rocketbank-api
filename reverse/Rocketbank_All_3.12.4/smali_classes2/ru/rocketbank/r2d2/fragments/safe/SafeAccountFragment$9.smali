.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$9;
.super Ljava/lang/Object;
.source "SafeAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 445
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$9;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 446
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->toggleDrawer()V

    return-void
.end method
