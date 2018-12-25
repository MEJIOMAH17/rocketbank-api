.class final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$navigationOnClickListener$1;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$navigationOnClickListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$navigationOnClickListener$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method
