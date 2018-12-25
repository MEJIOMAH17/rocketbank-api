.class final Lru/rocketbank/r2d2/fragments/RocketFragment$navigationClick$1;
.super Ljava/lang/Object;
.source "RocketFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/RocketFragment;->getNavigationClick()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/RocketFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/RocketFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment$navigationClick$1;->this$0:Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 214
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/RocketFragment$navigationClick$1;->this$0:Lru/rocketbank/r2d2/fragments/RocketFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lru/rocketbank/r2d2/activities/MainActivity;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->toggleDrawer()V

    return-void

    :cond_0
    return-void
.end method
