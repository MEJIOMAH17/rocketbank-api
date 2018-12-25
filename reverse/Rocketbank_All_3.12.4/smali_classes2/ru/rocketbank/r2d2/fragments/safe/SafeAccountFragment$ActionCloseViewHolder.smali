.class Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "SafeAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionCloseViewHolder"
.end annotation


# instance fields
.field private btn:Landroid/widget/Button;

.field private final safeAccount:Lru/rocketbank/core/model/SafeAccount;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;Landroid/view/View;Lru/rocketbank/core/model/SafeAccount;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    .line 749
    invoke-direct {p0, p2}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 750
    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    const p3, 0x7f090080

    .line 751
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->btn:Landroid/widget/Button;

    .line 752
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->btn:Landroid/widget/Button;

    const p3, 0x7f1100c8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 753
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->btn:Landroid/widget/Button;

    new-instance p3, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$1;

    invoke-direct {p3, p0, p1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$1;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1300(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)V
    .locals 0

    .line 743
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->onClick()V

    return-void
.end method

.method static synthetic access$1400(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)Lru/rocketbank/core/model/SafeAccount;
    .locals 0

    .line 743
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    return-object p0
.end method

.method private onClick()V
    .locals 3

    .line 762
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->this$0:Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;->safeAccount:Lru/rocketbank/core/model/SafeAccount;

    .line 763
    invoke-virtual {v1}, Lru/rocketbank/core/model/SafeAccount;->getCloseText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1100c7

    .line 764
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$3;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)V

    const v2, 0x7f11008b

    .line 765
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder$2;-><init>(Lru/rocketbank/r2d2/fragments/safe/SafeAccountFragment$ActionCloseViewHolder;)V

    const v2, 0x7f11032e

    .line 771
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
