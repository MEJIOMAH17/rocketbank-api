.class final Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$setupToolbar$1;
.super Ljava/lang/Object;
.source "NewSafeFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->setupToolbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment$setupToolbar$1;->this$0:Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/safe/NewSafeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/activities/MainActivity;

    .line 93
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->toggleDrawer()V

    return-void
.end method
