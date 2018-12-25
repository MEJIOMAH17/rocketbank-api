.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->switchFingerPrint(ZLru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 541
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    sget-object v0, Lru/rocketbank/r2d2/widgets/FingerprintDialog;->Companion:Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "fragmentManager!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/widgets/FingerprintDialog$Companion;->showFingerprintDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void

    .line 544
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const v2, 0x7f11038d

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/manager/TouchManager;->isLockScreenEnabled()Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_2

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const v3, 0x7f11038b

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_2
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/manager/TouchManager;->hasFingerPrints()Z

    move-result v1

    if-nez v1, :cond_3

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const v3, 0x7f11038a

    invoke-virtual {v1, v3}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const v2, 0x7f11038c

    invoke-virtual {v1, v2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110071

    .line 557
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110406

    .line 558
    new-instance v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$1;-><init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 562
    sget-object v2, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$2;->INSTANCE:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1$dialog$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 567
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const v2, 0x7f060208

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 569
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$switchFingerPrint$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 570
    instance-of v1, v0, Lru/rocketbank/r2d2/activities/SecuredActivity;

    if-eqz v1, :cond_6

    .line 571
    check-cast v0, Lru/rocketbank/r2d2/activities/SecuredActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/SecuredActivity;->keepUnlocked()V

    :cond_6
    return-void
.end method
