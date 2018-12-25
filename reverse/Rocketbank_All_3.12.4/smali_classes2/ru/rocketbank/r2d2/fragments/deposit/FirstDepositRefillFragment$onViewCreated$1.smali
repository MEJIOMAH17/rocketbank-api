.class final Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FirstDepositRefillFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirstDepositRefillFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirstDepositRefillFragment.kt\nru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1\n*L\n1#1,493:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->access$getDeposit$p(Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;)Lru/rocketbank/core/network/model/Deposit;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/Deposit;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "this@FirstDepositRefillFragment.activity!!"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/deposit/FirstDepositRefillFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method
